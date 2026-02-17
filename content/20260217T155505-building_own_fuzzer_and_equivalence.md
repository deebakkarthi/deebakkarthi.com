---
title: Building own fuzzer and equivalence
date:  2026-02-17T15:55:05-05:00
tags:
mathjax: false
---

- What makes random generation not scalable?
	- Parts of any inputs are rarely independent
	- That was one of the key assumptions with random generations
	- Each part was assumed to be *i.i.d*
- Assume that you have a very large amount of input test cases. Does that mean that your program is covered ?
	- Not necessarily. If the inputs all exhibit the same behavior we haven't done any real exploration
- What is at the core of cost-effective input selection?
	- Finding equivalence classes
- What is a seed in the context of input selection?
	- A seed is a known *good* input on which we can build new possibly good inputs
- What is the fundamental characteristic of a *good* seed?
	- Has new coverage
- What is the difference between soft-steering and hard-steering
	- Hard steering provides a *distance* measure
- What are the three requirements for hard-steering
	- Distance functions
	- Neighborhood definition
	- Predicate aggregation
- What are the two ways to steer when stuck at a local minima using hill climbing
	- Restarting with new random input
- What are some drastic measures to navigate harsher landscapes?
	- Changing multiple input variables
	- Using Genetic algorithms
- What is incremental testing strategy?
	- Start with a weak criterion
	- Iterate till you reach saturation
	- Pick a stronger criterion, refine the parameters and repeat the process
	- Prioritize critical paths