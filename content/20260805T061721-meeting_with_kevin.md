---
title: Meeting with Kevin
date:  2026-08-05T06:17:21-04:00
tags:
mathjax: false
---

Revisions are due **next Wednesday (Aug 12th)**

But we should probably complete it before this weekend

# HARM Union-ing
- In order to have scalability, we are forced to use unions
- A naive solution to the redundant assertions is to concatenate the traces into a single one and run HARM (provided it handles the edges gracefully). But this won't scale. We already saw, even with parallelism, running mining requires a lot of work.
- Union-ing also only increases the $\mathsf{Cat-2}$ assertions, so its effects are not detrimental.
- A possible new feature in HARM/miners is the ability to cross check assertions with other traces
- Another feature is to provide a list of *anti-properties*
	- I don't know how scaleable this is
	- We cannot get arbitrary *anti-properties* just as we cannot get *properties*
	- But having that list will allow us to not mine things in the future
	- Its like having a CEX list at hand

# Changes to the manuscript
- We don't have to make drastic changes. Most of our edits should just be explanations
- Color the text in overleaf
- Use *suppositions* when we are referencing $\mathsf{Cat-3}$ assumptions
	- This should hopefully disambiguate the readers