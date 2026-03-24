---
title: Meeting Notes
date:  2026-03-20T06:21:59-04:00
tags:
mathjax: false
---

| Change                        | #(Assertions) | #(Proven) \[Proven %\] | #(Covered) \[Cover %\] | Mutation Coverage  |
| ----------------------------- | ------------- | ---------------------- | ---------------------- | ------------------ |
| Module declaration            | 159           | 145 (91.195%)          | 139 (100%)             | 28.60% (940/3287)  |
| Module declaration(Repeat)    | 176           | 162 (92.045%)          | 154 (100%)             | 30.73% (1010/3287) |
| Claude continue               | 202           | 180 (89.10%)           | 171 (100%)             | 31.46% (1034/3287) |
| Globally Overlapped Imply     | 207           | 201 (97.10%)           | 198 (99%)              | 29.60% (973/3287)  |
| `G(\|->) and G(\|=>)`         | 165           | 149 (90.030%)          | 155 (100%)             | 30.36% (998/3287)  |
| `G(\|->) and G(\|=>)`(Repeat) | 165           | 154(93.33%)            | 153 (100%)             | 30.39% (999/3287)  |
| haiku (Only \|-> and \|=>)    | 46            | 40 (86.95)             | 46 (100%)              | 6.42% (211/3287)   |
| opus   (Only \|-> and \|=>)   | 122           | 113 (92.62)            | 107 (100%)             | 26.68% (877/3287)  |
| haiku (No Pattern)            | 76            | 40 (52.631)            | 53 (100%)              | 18.38% (604/3287)  |
| opus (No Pattern)             | 143           | 123 (86.01)            | 125 (100%)             | 28.05% (922/3287)  |
| sonnet (No pattern)           | 188           | 176 (93.617)           | 161 (100%)             | 33.13% (1089/3287) |
| sonnet (No pattern)           | 194           | 164 (84.5)             | 164 (100%)             |                    |
| Verification Expert           | 223           | 198 (88.79)            | 183 (100%)             |                    |
| hierarchy                     | 221           | 207 (93.66)            | 178 (100%)             |                    |


# Lean
- Model verilog in Lean
- Ask claude to generate LTL
- Ask it to prove it
- We would essentially have 100% proven
- But coverage would still be an open problem


# Notes
- Understand why the LLM goes wrong?
	- Is the design wrong?
		- But we asked it to generate specifications from the design. It shouldn't ever be wrong
		- Is it generated based on what that specific block of text resembles ?
	- Is there a fundamental understanding deficiency ?
	- Are we not constraining enough?
		- Look at jasper gold output and see if this state will ever hold

- V2C: verilog to C 
- How to prove equivalence of the lean representation and verilog?