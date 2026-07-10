---
title: LLM Benchmarks for Assertion Generation Literature Review
date:  2026-07-01T10:06:07-04:00
tags:
mathjax: false
---

# Timeline of works

![](../assets/Pasted%20image%2020260710114728.png)

# Goal
- Find out existing benchmarks to evaluation LLMs on assertion generation
- The inputs maybe spec+RTL, RTL only or spec only
- The output is always SystemVerilog assertions

# Methodology
- I was able to list a couple of work off the top of my head

| Title          | Authors           | Affiliation     | Venue                  |
| -------------- | ----------------- | --------------- | ---------------------- |
| AssertionBench | Pulavarthi et al. | UIC , Microsoft | NAACL '25              |
| FVEval         | Kang et al.       | UCB, Nvidia     | DATE '25               |
| AssertLLM      | Fang et al.       | HKUST           | ICLAD '24, ASP-DAC '25 | 

- I assumed newer benchmarks would have to cite these and older benchmarks would have been cited by these.

 Out of these, I consider the following to be closely related to our work
 
- AssertionBench
- FVEval (RTL2SVA)
- AssertLLM2

The following are works which has assertion generation as a component
- CVDP
- FIXME

# Groups working on this
There seems to be certain groups whose name keeps popping up
- HKUST (Zhiyao Xie)
	- AssertLLM
	- AssertLLM2
	- RTL-Coder
	- RTLLM
	- Openllm-rtl
- Nvidia (Mark Haoxing Ren)
	- AssertionForge
	- FVEval
	- CVDP
	- CraftRTL