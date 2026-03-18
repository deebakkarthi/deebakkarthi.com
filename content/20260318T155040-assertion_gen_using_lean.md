---
title: Automatic Assertions Generation using LLMs using Lean4 feedback
date:  2026-03-18T15:50:40-04:00
tags:
mathjax: true
---

# Assumptions and Goals
- The design is golden
- $\forall$ LLM generated assertion should be proved correct
	- Running Jasper may take a while for larger designs

# Rough Plan
- Given some verilog design, convert to a model in lean
- Ask the LLM to generate specifications and prove them under LTL
- LLM can never generate *false* specifications. For any specifications it may generate it has to prove it. It will also allow it to reason about the hardware. Right now we don't know what it's reasoning is.
- Can further mutate the design and check if the specification still holds.
- Detach ourselves from Jasper
- Easier to steer the LLM using specific lean thing instead of NL 
