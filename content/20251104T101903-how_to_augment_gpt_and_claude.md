---
title: Finetuning GPT and Claude
date:  2025-11-04T10:19:03-05:00
tags:
- uva
- assertion_gen
---

What are the possible ways to augment the knowledge of LLMs of a niche topic?

# Context Window
If the knowledge is small enough to fit inside the context window of the model then this is the simple way

When a book was uploaded to Chatgpt it still made errors when asked direct questions from the book.


Claude does better and fixed its mistakes.


But this is just one book. We cannot encapsulate all the knowledge about verilog in the context window of any model. And even if we did ChatGPT still has problem even retrieving the information for the context. 

Can we use the LLMs as an information retrieval tool? How good are they compared to traditional retrieval ? is retrieval even a strong point of LLMs? 


# Fine tuning
The models are trained using `prompt, answer` pairs. So do we have to synthesize the materials to that format?
Fine tuning 