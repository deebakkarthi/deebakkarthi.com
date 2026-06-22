---
title: FVEval response
date:  2026-06-22T13:34:35-04:00
tags:
mathjax: false
---

> It sounds like the authors tried several approaches to generating assertions from a design, and generated several benchmarks. Did they compare the different approaches?

Though all three benchmarks result in assertions at the end, as they don't use the same design it is hard to make an apples-to-apples comparison

>  Do you believe they did this properly not not just overfit their LLMs to simple designs?

- Their rationale for generating these synthetic benchmarks was that open source RTL code is usually part of a larger system, they cite OpenTitan, and hence not representative of the entire FV landscape.
- But one could argue that their approach also doesn't scale the entire digital design landscape.
- An FSM/pipeline, however big it is, fundamentally has a set of assertions most apt to it. Adding more states/stages doesn't really change this, in my opinion.
- If they were training an LLM, then it might be useful to have these designs. But since we are just testing them and each test is independent , they don't seem to serve any purpose.
- What do we gain by testing on a 5-stage pipeline vs a 6-stage pipeline? They also swap logical operators but this too is irrelevant. Most LLMs are past these tricks. This might have been useful in earlier stages where we can test the generalizability of LLMs by having training data just have `+` and then test on `-` to see if the LLM is able to apply what it had learned.
- But this is just a hypothesis on my end. Maybe the larger design do fail the LLMs. I don't see a plot with correlating design size with accuracy. But my experience so far with Claude tells me that it will perform the same. The context windows have become so large that the size of an individual design is no longer a constraint.