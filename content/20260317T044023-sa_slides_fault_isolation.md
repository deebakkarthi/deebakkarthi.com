---
title: Fault Isolation
date:  2026-03-17T04:40:23-04:00
tags:
mathjax: false
---

# Questions
- Why would you want to reduce the size of the inputs causing a fault?
	- Shorter running times
	- Can localize the fault
	- Easier to communicate
	- Easier to find duplicates
- Give the algorithm to reduce input size?
	- Start with a fault causing input
	- Divide it into two. Check which half causes the failure.
	- Repeat from step 1
- What happens when both halves of the input pass individually but as a whole fail?
	- Reduce granularity by half
	- Use quarters of input rather than half
- What are effects of granularity size?
	- probability of finding the fault
	- execution times
- Challenges in delta debugging
	- Some input cannot be split neatly
	- Other factors such as execution time
	- Non-determinism
	- High execution costs
- What is the key insight behind spectrum based localization ?
	- To cause a fault a statement must be executed
		- by calculating the fraction of times a statement being executed coincided with a fault can give us estimates on how *risky* that statement is
- Give the simplest statement risk formula
	- `number of executions with faults / total number of executions`
- What makes spectrum based localization so cheap?
	- We are already collecting coverage and running tests
	- Why not use it for this?
- What is invariant diff-based localization
	- Collect invariants during the run
	- Difference between invariants in passing runs vs faults