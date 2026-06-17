---
title: Conclusions from SVAGENLEAN
date:  2026-06-17T15:13:15-04:00
tags:
mathjax: false
---

# What is SVAGENLEAN?
- Seeing the "success" of LLMs in using lean to prove complex theorems, I wondered if this translates to SystemVerilog Assertions.
- SVA kind of need proofs but usually this is done by an FV tool like JasperGold
- Lean offers very good error messages. The lean organization itself has bought into the AI hype train
- The problem or the missing part in my older flow was a feedback loop
- There was a big disconnect between the LLM and the FV
- There wasn't really an obvious way to connect them. The LLM generated a bunch of assertions in a single shot and FV's feedback was just thrown out the window
- Lean, at least theoretically, allowed for a more granular feedback when writing an assertion
- After the LLM has generated an assertion, it had to prove it formally. This requires additional "thinking" on its part and the error messages by lean might give it opportunity to go back and change the assertion itself. In this process it could also take down notes about the design itself
- All of this sounds amazing but why do I not want to continue down this path?

# Practical issues
- It BURNED through tokens. Even for a simple adder, I blew threw my quota.
- This isn't sustainable at all if we want to scale.
- It also took enormous amounts of time. As these models have become larger the inference time has ballooned.
- This cost in terms of time could be substituted with cheaper, brute-forcey methods such as mining.
- The intermediate lean layer that I wrote, though serviceable, has no guarantees. It is notoriously hard to work with the verilog standard. Constructing an abstraction layer that maps every single verilog concept into an equivalent lean concept was no joke. I had to start with Verilog-95 because the newer ones were so much harder. In the future, we would require concrete guarantees that the mapping is isomorphic for this method to be reliable
- Proving assertions is HARD. Who would have thought? While Jasper and other formal tools have nearly half-century worth of bag of tricks, LLMs need to pull stuff out of thin-air. This meant that significant tokens were wasted on writing the proofs. This was further exacerbated by lean-specific syntax mistakes. All this work is redundant as we would anyway have to run these through an actual FV in any real world production grade application
- No resource has been as valuable as the context window. But to write these assertions, a significant portion of it is taken by the scaffolding code. 

It is for these reasons, that I don't want to pursue this path anymore, despite its promising premise.