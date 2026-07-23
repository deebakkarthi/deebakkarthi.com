---
title: Cadence Meeting Slide Preparation
date:  2026-07-22T13:22:42-04:00
tags:
mathjax: false
---

# LLM Work
- Baseline Verilog knowledge test
	- Taken over by benchmarks such as RTLLM/Verilog-Eval
	- Basically hdlbit.xyz questions
	- Pretty bad before but frontier models now ace it
- LLMs for assertion generation
	- Lots of approaches
		- NL2SVA
		- RTL2SVA
	- But no standardized benchmark that is satisfactory
	- Rudimentary metrics
	- Invalid comparisons
- Work on a benchmark right now
	- Purely RTL2SVA
		- We feel like this is the first step to take
		- Bug hunting and other tasks require too much trust in the LLM
- With benchmarks we found recurring behavior
	- buffer overflow
	- VERT noticed that `|->` and `|=>` are confusing
	- `bind` was a big problem before
	- Hierarchical naming
- Cost and Scalability


# Latest results

## `sockit_owm`

| Model  | #(Assertions) | Proven % | Proof Core Coverage |
| ------ | ------------- | -------- | ------------------- |
| Haiku  | 26            | 57.69    | 47.13               |
| Sonnet | 73            | 97.26    | 78.16               |
| Opus   | 50            | 96       | 68.39               |
| Fable  | 43            | 97       | 77.87               |

## `i2c`

| Model  | #(Assertions) | Proven % | Proof Core Coverage |
| ------ | ------------- | -------- | ------------------- |
| Haiku  | 27            | 100      | 68                  |
| Sonnet | 126           | 40       | 85                  |
| Opus   | 76            | 88.15    | 88.57               |
| Fable  | 146           | 89.72    | 98.42               | 

## `ethmac`

| Model  | #(Assertions) | Proven % | Proof Core Coverage |
| ------ | ------------- | -------- | ------------------- |
| Sonnet | 352           | 88%      | 72%                 |



![](../assets/Pasted%20image%2020260723102636.png)