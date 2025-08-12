---
title: index_compression
date: 2023-12-21T04:53:23-05:00
---
> [!question]- Why Compression
> - Compressed data takes up less space
> - The cost of decompression is very low compared to the cost of taking up more storage
> - The decompression algorithms are so fast that the time take can be considered negligible. This makes compression a no brainer as we can have virtually the same performance but with decreased memory/storage requirements
> - Can have more items in the memory
> - Reading compressed data and then decompressing them when required is faster than reading uncompressed data

> [!question]- Why Compression in IR
> - Dictionary
> 	- So that we can have the entire dict in memory
> - Postings
> 	- Reduced disk space
> 	- Faster reading into memory
> 	- Many engines even have some portion of the posting list in main memory. So compression will help with that too

> [!question] What is heap's law
> $M=kT^b$
> Where M is the vocabulary size
> k is a constant. $30\le k \le100$
> T is the number of tokens in the collection
> b is also a constant. $b\approx 0.5$

> [!question] Compute vocabulary size M
> - Looking at a collection of web pages, you find that there are 3000 different terms in the first 10,000 tokens and 30,000 different terms in the first 1,000,000 tokens.
> - Assume a search engine indexes a total of 20,000,000,000 (2 × $10^{10}$ ) pages, containing 200 tokens on average 
> - What is the size of the vocabulary of the indexed collection as predicted by Heaps’ law?
> # Answer
> Heap's law states that $M = kT^b; k\in[30,100]; b\approx0.5$ 
> 3000 = k(10,000)^b
> Taking log on both sides we get
> log(3000) = b*log(10,000)+log k
> 3.48 = b*4 + logk
> 
> 30,000 = k(1,000,000)^b
> Taking log on both sides we get
> log(30, 000) = b*log(1,000,000)+log k
> 4.48 = b*6 + log k
> 
> Now we got a linear system of equations. Let logk be y
> 4*b + y - 3.48 = 0
> 6*b + y - 4.48 = 0
> We get b = 0.5 and logk = 1.48
> k = 30
> So $M = 30*\sqrt T$
> 
> $M = 30 * \sqrt (2*10^{10}*200)$
> 60,000,000

> [!question]- What is Zipf's law
> Suppose the most frequent term in the corpus has a frequency of $c_f$, then the $i^{th}$ most frequent term will have a frequency of $c_f/i$

> [!question]- If the most frequent term occurs $c_i$ times, then how many times does the second most frequent occur?

> [!question]- Where do we want to keep the dictionary?
> Memory

> [!question]- Why is fixed width a bad idea for dictionary
> Shorter words will take up garbage space
> Longer words can't be stored

> [!question]- How does using strings reduce the size of the dictionary
> Instead of trying to figure how to optimally set a fixed size for dictionary we can just have pointer that points to the term
> This way we can store terms of any length
> Pointer will always take up the same space regardless of the length of the string

> [!question]- How does using blocks reduce the dictionary size
> We know that using strings is better than fixed sized array. We can optimize this even further. We will pick a block size $k$. For the sake of this example let $k = 4$. This means that 4 entries in the dictionary all point to the same location in the memory.
> Then how will we be able to identify the words?
> In the previous method the pointer pointed to the beginning of the string, but in this approach we will point to a byte that tells us the length of the string. Since a byte can encode values up to 255, we can realistically assume that this is enough to encode the length of the string
> By using the index of the term in the dictionary we will know how many jumps to take

> [!question]- Why is lookup slower when we use blocking?
> Suppose we want to find the posting list of the term "apple". 
> How will we do this?
> We first have to find the apple entry
> There is no hash function to index into. The terms are stored in a sorted manner. Using a hash function may seem nice but it is a nuisance to manage the addition and removal of word at that scale.
> Since they are sorted we can perform a binary search.
> If there is no blocking then every time we access a memory location we check one word. If the word doesn't match then we go the next location.
> But if there is blocking then we have to check the entire block to see if the word is there. We can't tell from the first word. We have to go through more words

> [!question]- Give an example for front coding
> Since the entires are sorted many of them share the same prefix. we can exploit this
> `8automata8automate9automatic10automation`
> All of these words have the same prefix `automat`
> `8automat*a1-e2-ic3-ion`
> Here we encode a prefix using `*`
> and reference it again using `-`

> [!question]- What is the idea behind gap-encoding
> Suppose there are 800,000 documents.
> The theoretical number of bits required to encode this is $log_2800,000 \approx 19.6$. So around 20 bits. But what we typically use is a 4-byte(32-bit) integer. So we are using 12bits extra per docID. This is a waste of space.
> Some terms occur very frequently. So instead of repeating the higher bits over and over again we can just encode the gap
> Eg: $[1000, 1005, 1007, 1020]$
> $[1000, 5, 7, 20]$

> [!question]- Where should you calculate the gap from? the first docID or the predecessor?
> First

> [!question]- What is the problem with gap-encoding
> But if the gap is very large as it will be for rare words then the gap itself will become as large as the docID number
> In this case there is no use for gap-encoding

> [!question]- What is the solution to gap-encoding
> Variable length encoding

> [!question]- What is the use of the _continuous bit_
> To signify whether this byte is a gap or not
> If it is set to 1 then this byte is a continuation of the original address thereby making this a gap byte
> If it is not 1 then this is a gap large that 1 byte and we have to go till the byte with the continuation bit to figure out the full length

> [!question]- Mention a problem with VB
> If the gaps are smaller then we are again wasting space by using a byte

> [!question]- What is unary code and give the unary code of 5
> 5 = 111110

> [!question]- What are the two components of a gamma code?
> Length and offset

> [!question]- What is the procedure to create the gamma code of a number
> Represent the number in binary
> Chop off the leading digit. This is the *gap*
> Represent the length of the gap of the digits in unary code
> concat this unary code to the gap

> [!question]- Give the gamma code of 69
> 69 - 1000101
> Gap = 000101
> Length = 6 = 1111110
> 1111110 000101

> [!question]- What is the theoretical max length of offset and length in gamma code
> offset = $\lfloor{}log_2N\rfloor$
> Usually number of bits is this number + one. As we are removing the first bit we can just take the floor
> Length = $\lfloor{}log_2N\rfloor + 1$
> We need +1 for that extra 0 at the end

> [!question]- How many bit does gamma code take?
> $2 \times \lfloor log_2 G \rfloor + 1$

> [!question]- What is the significance of gamma codes being prefix-free?
> We don't need delimiters. We start at the beginning go until the first 0. This is the length of the offset. We takes those next bits and we can decode. 

> [!question]- What is the other significance of gamma codes?
> They are parameter free. They don't need to be trained to fit a corpus

> [!question]- What is the advantage that variable byte encoding has on gamma?
> VB is byte aligned. Gamma code is not. manipulating near these boundaries is costly.

