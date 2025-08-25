---
title: Tolerant Retrieval
date: 2023-10-07T01:48:08-04:00
---


# Dictionary Storing Mechanism

> [!question]- What are the two main data structures to store dictionaries

> [!question]- What are the pros of using a hashtable

> [!question]- What are the cons of using a hashtable

> [!question]- What are the pros of using a Tree

> [!question]- What are the cons of using a Tree

> [!question]- Draw a sample tree


# Wild Card Queries 

> [!question]- Using tree how would you retrieve queries like `mon*`

> [!question]- Using tree how would you retrieve queries like `*ed`

> [!question]- What is the flaw with using trees to process wildcard queries

> [!question]- What is the solution for handling arbitrary wildcard queries using b-trees

Refer [ Permuterm](20231007101613-permuterm.md) for concepts

> [!question]- What is the problem with permuterm index

# Bi-gram index

> [!question]- How would you construct a bi-gram index

> [!question]- Are bigram index and biword index the same?

> [!question]- How would you process a wild card query using n-gram indices

> [!question]- Give the pros and cons of bi-gram and Permuterm

# Spelling Correction

> [!question]- What are the two main uses of spelling correction

> [!question]- What are the two types of spelling correction

> [!question]- Give one practical use case of spelling correction

> [!question]- In isolated word correction what are the choices for the source of lexicon?

> [!question]- What is a subtle drawback of using the indexed corpus as a source of lexicons

> [!question]- What are the three ways to do isolated spelling correction?

> [!question]- Why do we need weighted edit distance?

> [!question]- Give the Levenshtein edit distance algorithm
>```python
>def edit_distance(a:str, b:str):
>  	mat = [[0 for _ in range(len(b)+1)] for _ in range(len(a)+1)] 
>  	mat[0][0] = 0;
>  	for i in range(len(a)+1):
>  		mat[i][0] = i
>  	for i in range(len(b)+1):
>  		mat[0][i] = i
>  	for i in range(1, len(a)+1):
>  		for j in range(1, len(b)+1):
>  			mat[i][j] = min(
> 	 			mat[i-1][j-1] + (0 if a[i-1] == b[j-1] else 1),
> 		 		mat[i-1][j]+1,
> 	 			mat[i][j-1]+1 )
>  	return mat[-1][-1]
> ```

> [!question] Give the heuristic for filling each of the cells in computing edit distance

  | Diag (0 if equal or 1 if not equal) | Above +1                   |
  | ----------------------------------- | -------------------------- |
  | Left +1                             | Min of all the other three |
  
> [!question]- Give the structure of a k-gram index
> `dict(k-gram, term[])` It is a mapping from a k-gram to the terms from the original index that contains that k-gram

> [!question]- What is the formula for Jaccard Coefficient

> [!question]- Give pseudo code for computing JC using only one of the kgrams
>```python
>def jaccard_coefficient(query:str, term:str, k:int)->float:
>	kgram = kgram_create(query, k)
>	ins = 0
>	for q in kgram:
>		if q in term:
>			ins += 1
>	return ins/(kgram_num(term, k) + len(kgram) - ins)
> ```

> [!question]- How to do context sensitive correction

> [!question]- Give the mathematical formula for ranking the alternative spellings

# Soundex

> [!question]- Give the format of a soundex reduced term

> [!question]- Give the soundex algorithm
> - Retain the first word
> - Replace letters using the following rules
> 	- `aeiou why` - `0`
> 	- `bfpv` - `1`
> 	- other letters - `2`
> 	- `dt` - `3`
> 	- `l` - `4`
> 	- `mn`- `5`
> 	- `r` - `6`
> - Remove all the numbers that repeat
> - Remove all the 0s
> - Pad with trailing zeros until you get a 4 character sequence
> - Return the 4 character sequence

> [!question]- What should you do first - remove consecutive digits or remove zeros?
> Remove consecutive digits