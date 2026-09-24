---
title: "Meeting with Tommy"
date:  2026-09-24T16:26:15-04:00
tags:
mathjax: false
---

# Rough hypothesis
- This isn't much of a hypothesis yet but a rough sketch of what I'm thinking
- I've been reading [fosterAssertionbasedDesign2004](fosterAssertionbasedDesign2004.md) and absorbing a lot of information
- So far it has been clear to me that a source of ground truth is required to perform any sort of verification
- Verification means to prove something as the truth
- The truth we are trying to establish is that *the design and the implementation are congruent*.
- The book identifies three types of assertions
	- High level assertions from the spec document
	- Block level assertions from RTL+spec
	- implementation level RTL assertions
- There are other ways to verify an RTL design
	- Model equivalence, etc...
	- Can you try your hand with these?
- If LLMs can generate assertions from RTL designs can they generate both the RTL and the assertions together?

If, 
```verilog
// 4 bit adder
<some verilog code>
```

can be taken in and converted to include assertions. Then, can the LLM not generate the RTL code itself? Surely, if it can understand the RTL, it surmises that it should be able to generate it as well?

-  We have seen that the models aren't that good with RTL. Is this because they haven't had enough data or if there's something about RTL itself that is hard?
	- RTL has some elements of non-von-neumannism that is distinct from C or C++
	- But RTL looks like a programming language
	- Is the LLM trying to model it as such?

- Are LLMs better at HSLs?
- Have a precise problem statement that you are going to tackle. You only have so much time.

- Block level assertions that generate assumes/guarantees
- RTL level assertions that capture a very direct intent
- Assertion patterns. Can you not do this with regex?
- Converting assertion generation into a reasoning problem
- Convert the book into a searchable entity which the model refreshes each time that it wants to do something
- test out with PCI/ACH interfaces since they have a lot of documentation