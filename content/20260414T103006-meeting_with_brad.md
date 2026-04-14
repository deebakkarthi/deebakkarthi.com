---
title: Meeting with Brad
date:  2026-04-14T10:30:06-04:00
tags:
mathjax: false
---

# Minutes
- Useful tip: Add the details of the conference where you are submitting at the top of the document
- What does *practically relevant* mean?
- Antecedent of *them* on line 3 is unclear
- What is the purpose of the LLM line?
	- LLMs are accelerating the amount of Verilog code written
	- It may become infeasible to manually write assertions of all of them
	- Though the intent is implicit better make it explicit
- What is HARM and Texada?  What they are not is given but not what they are?
- Add what is missing from these tools in between paragraph 1 and 2
	- We need the key insight
	- What are we adding with this *end-to-end* flow
- The first paragraph is too long. Maybe shorten it
- Discussion about the repetition in abstract and the introduction
- Where is the big *comparison % number*? How do we compare? What do we compare against ?
	- Cadence BPS
	- Goldminer?
	- How do we do an apples to apples comparison? If we cannot do that, can we express why?
- The novelty compared to goldminer is that we are using formal verification to throw out rules rather than keep them
- Bare metal runs?
- What is the use of the 2x2 figure
	- What does this demonstrate ?
	- It shows that formal is over-constraining, as seen from just the 2 verified rules
		- The fact that we didn't provide any assumptions, though intentionally, may raise some red flags
			- We know that it is very hard to add assumptions. 
			- We have experimented with lightweight rules but could we go further?
			- There are dangers with going further. We may destroy the validity of the verifier but adding too many assumptions.
- How reliable is the FPGA environment is a question critics may ask
	- We know that it is *valuable* but how is it *useful*?
	- Goldminer's insights came from being applied in industry
	- How do we evaluate the *practical relevance*?
- How to empirically show that these additional capabilities are useful?
- What was the interesting rule that was found long time ago?