---
title: Meeting with Tommy
date:  2026-07-02T13:08:21-04:00
tags:
mathjax: false
---
# Plan
- Opencores, RISCV-cores designs and design a purely RTL-only benchmark
- COI, formal, proof core as metrics
- Minimal prompt
- Very similar to AssertLLM2 but without their large prompt and spec shenanigans
- Incorporate Agent/non-agentic benchmark template
	- See how to evaluate performance of different harnesses
- Cost?

# Future plan
- Synthesizing meaningfully valid RTL designs - RTL smith
- Investigate assertions to signifying missing parts of the design
- Guiding the LLM using patterns


---
# Periscope

- A simple first step would be include coverage metrics and see if mining more actually helped
- FAVA works to see how the extract these micro-arch stuff from RTL
	- Because that is what we are essentially trying to do when we try to falsify Cat-3 rules

- Classes
	- Spec based
	- RTL based
- Static Caroline trippel from DUT and reference truth