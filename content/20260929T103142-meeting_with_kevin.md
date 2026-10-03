---
title: "Meeting with Kevin"
date:  2026-09-29T10:31:42-04:00
tags:
mathjax: false
---

![](../assets/Pasted%20image%2020260929103153.png)

# Minutes
## Brad
- Brad talked to a bunch of lawyers
- https://www.ibm.com/docs/en/systems-hardware/zsystems/9175-ME1?topic=introduction-spyre-accelerator
## Yasas
- Boom core vcd mining takes a week
- Mining is done using Texada
- HARM still crashes due to the memory requirement
	- It seems to convert everything into a csv and then operate on it rather than use the vcd directly
- Maybe removing signals could help?

##  Kumaresh
- 10 new templates are being tried out on CVA6 using both HARM and texada

## Why did we choose HARM over [texada](https://github.com/ModelInference/texada)?
- Texada seems faster according to Yasas
- But [germinianiBaselineFrameworkQualification2025](germinianiBaselineFrameworkQualification2025.md) suggest otherwise. HARM seems magnitudes faster than Texada, at least in `G(A -> X(B))`.
- HARM doesn't support other templates
- Texada is actually written in C++. I misspoke. It's Goldminer that is written in Python.

No meeting next week.