---
title: "Assertion Generation as reasoning"
date:  2026-09-10T07:21:08-04:00
tags:
mathjax: false
---

A thought just popped into my head. This is from the podcast with Hamid.
He stated that assertion generation is fundamentally a reasoning problem and LLMs are perfect at this. If they went wrong then there is a flaw with the reasoning which should be easy to debug.

How to convert it to a purely reasoning task? I feel like verilog bogs down the model. But it has to understand verilog in order to generate assertions. Is there an asymmetry in terms of understanding vs generating? What even is understanding?

What are the reasoning benchmarks used right now?
There are a lot of these reasoning benchmarks. It seems at even very small models score about 80% on these.


Can we build on this base layer of foundation? Meaning a model with solid reasoning, with a loop, fix its mistakes even if it lacks domain knowledge?