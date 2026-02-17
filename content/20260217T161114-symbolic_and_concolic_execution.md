---
title: Symbolic and Concolic Execution
date:  2026-02-17T16:11:15-05:00
tags:
mathjax: false
---

- What does symbolic execution store a program as?
	- Binary tree
- What does each node of the binary tree correspond to?
	- conditional statement
- What does each edge correspond to?
	- Sequential non-conditional statements
- What is the manifestation of a equivalence class in the binary tree?
	- A path
- How do you find the constraints of an equivalence class
	- Conjunction of all the nodes along a path
- What tool is used to find the inputs?
	- A SAT solver on the path conditions can be used to get the input classes
- What are four applications of symbolic execution
	- Test generations
	- Infeasible path finding
	- Program repair
	- semantic difference between programs
- What are the three challenges associated with symbolic testing?
	- Scale of graphs can get out of hand
		- An easy example is loops
	- Some formulas are very hard to model
		- Eg: Trigonometric functions
	- Modeling outside entities such as files
- What is Concolic execution?
	- It is a portmanteau of Concrete and Symbolic
	- It starts with a concrete execution on some random input but store the symbolic state on the side
	- When it reaches the end of a path, it substitutes some of the concrete values and finds conditions for other paths
- Compare and contrast fuzzing, symbolic and concolic based on their soundness/completeness
	- | Method   | Sound | Complete   |
	| -------- | ----- | ---------- |
	| Fuzzing  | Yes   | No         |
	| Symbolic | Yes   | eventually |
	| Concolic | Yes   | No         |
