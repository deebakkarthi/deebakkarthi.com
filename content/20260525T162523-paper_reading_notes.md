---
title: Periscope draft notes
date:  2026-05-25T16:25:23-04:00
tags:
mathjax: false
---

# Introduction
- Introduction has a weak first line. How do we motivate the need for pre-silicon verification? and how has it increased in the recent years? Why is it that manually doing this can be cumbersome? Need references for all of these.
- ABV is done through two stages - assertion generation and assertion verification
- This assertion generation is done is three ways
	- Static generation using just the RTL
	- Dynamic mining on traces
	- Mining using LLMs
- Static generation doesn't scale that well. Simulation traces are very cheap. Companies have huge amounts of simulation traces as they have to perform testing anyways. We will never not test. Even if we are performing verification, the cost-effectiveness and the ease of testing is hard to beat.

> By only accepting assertions that pass unconstrained formal verification, we believe the authors discard useful assertions

This is the crux of our argument. We are essentially finding constrains in an automated manner.


> Distinguishing between these two categories is a key goal of our approach

# TODOs
- previous literature on rules that have CEX under unconstrained FV environment or how constraining is needed to have meaningful verification
- Constraining formal enviroment

# References
- [goodenoughPostsiliconTooLate2010a](goodenoughPostsiliconTooLate2010a.md)
- [germinianiSystematicLiteratureReview2025](germinianiSystematicLiteratureReview2025.md)
- [germinianiBaselineFrameworkQualification2025](germinianiBaselineFrameworkQualification2025.md)