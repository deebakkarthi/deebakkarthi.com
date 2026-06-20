---
title: Deep Dive into LLMs like ChatGPT
date: 2025-11-07T16:39:29-05:00
mathjax: yes
tags:
  - uva
---


# How are these models trained?
## Pretraining
### Get data
First step in training a model is to get huge amounts of high quality text. An example would be  https://huggingface.co/datasets/HuggingFaceFW/fineweb. 
Each company may have their own flavor of this. But the crux is:
- They scour the internet and gather all good webpages, documents, books, articles as possible
- They do some pre-processing that they end up with just text
### Tokenization
- Neural network expect their data to be in a numerical format. You may think "Why cannot we just use the binary representation?". In theory we could have a vocabulary of just ${0, 1}$ but the terms and the sequences are going to be extremely long. Due to computational restrictions we have a tradeoff between vocabulary size and sequence lengths.
- An example would be only considering bytes. Each byte is 8 bits longs. So our vocabulary size is 256. We convert all of our text using this encoding. 
- In practice we use techniques such as [Byte Pair Encoding](20251107T165501-byte_pair_encoding.md) to do this. A vocabulary size of around 100k seems to work well.
- You can check how GPT does this on https://tiktokenizer.vercel.app/
### Neural Network Training
- We want to model the statistical relationship of how these tokens follow each other in the training corpus
- To summarize the training process
	- We set some `MAX_WIDTH`, this will be our context window. What we are trying to train is the prediction of the next token given this context window.
	- We randomly sample a context from the dataset and ask the model what comes next. The output of the model is probabilities for all the tokens in its vocabulary. We then pick the token that has the highest probability as the final output. 

![](../assets/Pasted%20image%2020251107172433.png)

Visit https://bbycroft.net/llm for the actual architecture of a large language model.


### Inference

- We feed the prompt to the model ask it to predict the next token. We append the generated token to the context and ask the model to predict again. I am assuming that we do this until we reach a EOF token. 


# Post Training
- We want an assistant instead of an internet simulator. To accomplish this we need to teach the model how a good assistant responds.
- So we generate huge amounts of conversations through human labelers
- We call this post training because, we throw out the old dataset suddenly and replace it with this conversation dataset
- The model quickly adapts to respond in a conversational manner while retaining most of its older knowledge.
## Conversation encoding
- Similar to how we encoded words into tokens, we need some way to represent a conversation. This is so that we can perform assistant like conversations.
- After the pretraining phase, we insert special tokens in to embedding space to demarcate the start and end of conversations.
- The LLM servers add the appropriate markings to your prompt and they stop generation after seeing the EOF token from the model.
# How to think about talking to an LLM?
- The LLM just tries to replicate a human labeler. 

# How to prevent hallucinations?
- Allow the model to answer with "IDK"
- This is done just by having conversational examples where it says so
- How do we know what the model knows vs what it doesn't?
	- We can programmatically use another LLM to *interrogate* this one and create conversations saying that it doesn't know that.
	- In a similar vein we can intercept these "Idks" and use search to retrieve the last information and use the LLM itself to summarize that.
	- The important take away is that everything is done via conversational training examples. This makes sense when you think about other models are trained. If you want a CNN to do something you just have examples images that does them