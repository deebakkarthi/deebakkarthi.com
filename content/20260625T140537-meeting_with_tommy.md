---
title: Meeting with tommy
date:  2026-06-25T14:05:37-04:00
tags:
mathjax: false
---

# What I did
- Read [thangellamudiBridgingRTLAssertion2026](thangellamudiBridgingRTLAssertion2026.md) and found some things I am confused about
- Benchmarks that are resilient to test contamination essentially have a mechanism to construct test after the cutoff date
	- SWEBENCH just uses the pull requests after the cutoff date
	- This is the easiest way

# Questions about the paper
- They claim that training should include RTL with assertions instead of just assertions
	- Meaning instead of NL-assertion pair they train on NL-RTL+assertion pair
- But their massive dataset raises some red flags for me
- It is very vague where they gathered the data
- So I did some digging and found that the authors of RTLLM, the benchmark that they used, also published a dataset
- It also has 27k rows. What are the chances?
- I think that RTLLM is also inside the dataset. So the performance is just regurgitating the training data.

# General LLM Benchmarks
- I made a list of all the benchmarks used by these companies.
- I'll try to see if there are common patterns across these.
- I saw that these companies selectively hide benchmarks when their model underperforms