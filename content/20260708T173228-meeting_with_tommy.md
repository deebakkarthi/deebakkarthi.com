---
title: Meeting with Tommy
date:  2026-07-08T17:32:28-04:00
tags:
mathjax: false
---

# Difficulties with more complex cores
- BOOM written in chisel has several obstacles
- Though it can be compiled down to RTL, the signal mapping isn't clear
- We also have to boot linux on it which might be a problem given that it was hard on CVA6
- To monitor stuff on FPGA, probes have to be setup. Right now this is a manual process (I don't know what this means)
- What about JasperGold? We would be forced to work with the compiled down RTL which completely eliminates the advantages of using chisel in the first place

- Elong's (?) work is based on security assertions
- U250 heats up as it is not actively cooled

# TODO
- Connection between Caroline's work and Cat-3 falsification
- Jasper trace to assembly program conversion 