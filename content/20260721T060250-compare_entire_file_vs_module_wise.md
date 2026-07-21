---
title: Comparison of Entire files vs Modules
date:  2026-07-21T06:02:50-04:00
tags:
mathjax: false
---

# 2026-07-21T06:03:23
- My spidey sense tells me that **if I'm just testing intra-module assertions** then why bother giving the whole file?
- That might confuse the model more
- Smaller context windows are always better (or I think they are always better)
- Can I prove this?
	- Two test on multiple designs
	- One with just modules and the other with entire files
## Design choice
- Which designs should I choose?
- I need small enough designs but with multiple modules
- I need a page where I can see the statistics of each design
