---
title: 2025-12-26
date: 2025-12-26T14:24:18-05:00
tags:
  - uva
  - assertion_gen
---
- VERT seems flawed. Their testing involves extracting these if conditions and checking whether the LLM is able to perform the extraction. But if we already have a deterministic way of creating these assertions why bother with an LLM?
- I do like their idea of generating a synthetic dataset. I need a benchmark to evaluate these LLMs. Let me find out if there are industry standard benchmarks
	- I could see what benchmarks are used in the Rule-mining kind of assertion generation
	- AssertionBench might be useful. Each test is standalone and looks easy to use. They have used `bind` to add the assertions to the verilog code. That is much better than me pasting them in  the `.sv` file.
	- OpenTitan IP blocks
	- `nl2spec` paper converts natural language to LTL using just few shot learning