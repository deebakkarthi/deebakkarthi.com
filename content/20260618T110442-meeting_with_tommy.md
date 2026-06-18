---
title: Meeting with Tommy
date:  2026-06-18T11:04:42-04:00
tags:
mathjax: false
---

# Prep
- I went back and reviewed what we discussed last time. It was on April 9.
- I had just noticed a recurring pattern of missed overflows

# Plan
- I was thinking of completing the benchmark. I am not convinced that AssertionBench is a good benchmark. It is merely a collection of RTL files. I want to read some literature on how to construct an LLM benchmark. This in and of itself is a paper, evidenced by AssertionBench.
- This allows me have valid comparisons across models, agentic loops etc. The companies themselves boast these benchmarks when they release a model.
- This allows us to deal with no determinism too. I can do what these benchmarks do
- I was thinking about having benchmarks of different flavors
	- SVABENCH-template
	- SVABENCH-icl
	- SVABENCH-one_shot
- This is kind of like the last evaluation metric. As we have learned it is not possible to be comprehensive and understandable at the same time i.e small benchmarks that are easy to understand are not comprehensive. So we need a smaller set of benchmarks that we can iterate on.
- AssertionBench had ICL examples from HARM but we know that those kinds of templates isn't exactly what we would want the LLMs to extract
- There was a paper by Michael Ernst which talked about using static and dynamic mining in conjunction instead of thinking them as opposite poles.

# Questions
- How do they do it internally? Are there even iterations or do they just hope for the best?
- What contributes to the improvement of these models? Is it just scale or is there some theoretical underpinning that we can optimize on?

# Goals
- To essentially be a Verification engineer. As we learnt over the course of writing Periscope, VE taken in a design and write assertions. They don't write extra assertions or assertions that fail intentionally. They compress the RTL into a LTL space.
- VE write assertions that are meant to fail when they are given NL documents.


# Minutes
- Are static and dynamic approaches complementary?
- Do we even want the LLM to mine the same kinds of rules as a dynamic Miner?
- Is it possible to extract *all* possible assertions from RTL alone?
- How much free reign should we give the LLM?
- Can we do better than FVEval ?
- What are the uses of this?