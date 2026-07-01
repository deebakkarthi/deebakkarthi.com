---
title: Meeting with Tommy
date:  2026-06-30T12:44:59-04:00
tags:
mathjax: false
---

# Problem with RTL that has been seen before
- Even if the LLM hasn't seen any of the assertions, it seeing the RTL may have unintended consequences.
- Can we introduce a methodology to generate these RTL samples?
- Something like csmith? RTLSmith?
- Handcrafting the benchmarks isn't really scalable and we would have to release the benchmarks anyhow
- We definitely don't want any test contamination

# Metrics
- We can follow the lead of the other papers and  just use proven%, COI coverage, etc.
- But can we construct something new?
- Are all coverage created equal?
	- Some coverage has more bug finding/preventing capability than others
- How do we compare equal coverage?

# ChatSVA
- Read this paper
- Figure out that their Function Coverage metric is all about

# Templates?
- So far we have just been working on unguided mining, what if we want to guide the mining somehow?
- Look up Matt Dwyer's LTL patterns
- We have to be thinking about feedback loops

# Next Steps
- Read FAVA
	- Attempt to connect our work with theirs
- Read CHATSVA
- Try to come up with new metrics
- Read up on what to do after Periscope