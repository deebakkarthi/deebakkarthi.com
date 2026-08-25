---
title: Meeting with Kevin
date:  2026-08-25T13:00:27-04:00
tags:
mathjax: false
---
# Minutes
- Yasas has started work on the BOOM core
- Tommy's email about security bugs
	- HACK@DAC has datasets with "golden" designs and then with bugs
	- Can we use this for our benefit in some way?
	- Periscope only tells us whether an assertion is consistent or not
	- It doesn't tell us anything about how *good* it is
	- [20260825T131153-hack_at_dac_and_periscope](20260825T131153-hack_at_dac_and_periscope.md)
- Elong's work on security leaks
	- Is ours related to that?
	- Are there parallels that we can draw?
	- Detecting leakage bugs may be too ambitious
- To use CVA6 to hunt for bugs requires us to have some sort of *spec*? I think bug hunting implicitly implies the existence of a spec.

# LLM work

- How does asking an LLM to include the module header impact the results?
	- I need to concretely prove that this is a thing
- Start working on using specifications
	- Is there a uniform format for these specifications
	- Can we use [wuAssertLLM2ComprehensiveLLM2026](wuAssertLLM2ComprehensiveLLM2026.md)'s strategy of converting to markdown?
- Not using verilog ?
- Just generate properties and then ask the LLM itself to generate the module declarations
	- Is this different than including it in the prompt
	- Make sure across designs/iterations

# LLM + CVA6
- CVA6 commit history and attempting to extract information from that

# Thesis
- Clarify exactly what your problem statement is
- "Methodology to optimize LLMs through mostly prompts for any arbitrary task" may be too broad
	- It might also be very model specific
	- Can we pick something smaller?