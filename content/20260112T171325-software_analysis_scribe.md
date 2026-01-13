---
title: 2026-01-12
date:  2026-01-12T17:13:25-05:00
tags:
mathjax: false
---
# High Impact software bugs


# Higher level goals of Program Analysis
![](../assets/Pasted%20image%2020260112172811.png)

- Here *Specification* is any properties we want our program to have
- For a moment let us consider the *Program Analysis* component to be a black box.
- The goal of *Program Analysis* is checking if the program satisfies all the properties.
	- By seeing how well it satisfies the given properties we can gain *some* information about the program


# Types of Program Analysis
Broadly there are two types based on if the program is executed or not
- Static
	- Program is not executed
- Dynamic
	- Program is executed

# Soundness vs Completeness 
These are properties of the **Analyzer**
- Soundness is proving the absence of bugs
- Completeness is proving the presence of errors

Static methods are sound but not complete
Dynamic methods are complete but not sound