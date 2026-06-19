---
title: Literature Survey on Assertion Generation using LLMs
date:  2026-06-19T17:42:48-04:00
tags:
mathjax: false
---


# FVEval

[kangFVEvalUnderstandingLanguage2024](kangFVEvalUnderstandingLanguage2024.md)

- FVEval aims to test LLMs ability to be helpful for FV in general. To accomplish this, the authors devise three benchmarks
	- NL2SVA-HUMAN
	- NL2SVA-MACHINE
	- DESIGN2SVA
- In all the three cases the LLM's job is to generate assertions. But the input varies

| Benchmark      | Input                       |
| -------------- | --------------------------- |
| NL2SVA-HUMAN   | Testbench + NL descriptions |
| NL2SVA-MACHINE | NL descriptions             |
| DESIGN2SVA     | RTL                         | 

- NL2SVA-HUMAN describes its input as *testbenches*  but I am very confused about testbenches in FV. When I looked into the repo, they supposed testbenches look like design files.
- I think they are design files of common structures used in testbenches. FIFO, arbiter, RAM etc. are often used as intermediate structures between module and we write assertions on them instead of the modules themselves.
- NL2SVA-MACINE uses LLM generated NL-assertion pairs to test other LLMs
- Our focus is on DESIGN2SVA
- The authors say that there aren't enough opensource RTL design files on the Internet and the ones that are available are often part of a larger system which makes them not general enough
- To combat this they generate 96 FSM and 96 arithmetic pipeline designs
- They have a common template and the knobs are adjusted randomly to generate valid design.

# Flaws
- The first two benchmarks don't pertain to us. We have not used natural language so far.
- While I agree with the criticism of existing RTL, I don't know if their approach solves that.
- FSM and pipelines, while common, don't encapsulate everything about digital design
- Even when they randomly change the logical operators, the general structure is the same. We would always generate the same kinds of assertions.

# Proposal
- I will read up literature on what makes an LLM benchmark *good*
- See if I can apply that and create a better benchmark