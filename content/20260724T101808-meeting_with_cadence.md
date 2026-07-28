---
title: Meeting with Cadence
date: 2026-07-24T10:18:08-04:00
tags:
mathjax: true
---
- An assertion that is not proven but also not falsified are considered to be pseudo proven by many companies. This is very similar to the $\mathsf{Cat}-3$ rules that we convert to assumptions
- What is our end goal actually?
- Templates should ideally include expressions and not just signals. Relationship between two signals is overly simplistic

# Input from Cadence
- This isn't new. People have done this before - mining assertions, using smaller assertions to prove larger ones, etc... isn't novel in the industry
	- https://www.eejournal.com/article/20100506-01/
	- NextOp was acquired by Atrenta which was then acquired by Synopsys
	- http://www.nextopsoftware.com/ redirects to synopsys
- **Going deeper in the state space is the most important thing**
- Finding bugs should be our priority
- You can mine assertions but any template would be too simple.
- In companies, people usually write bespoke assertions that are very complex. Then they mine/generate these *lemma/helper* assertions to prove the former.
- **But, even the smaller assertions are much more complex than $G(A \rightarrow X(B))$**
- Fundamentally, complex properties cannot be mined
- LLM generated assertions from spec documents could be closer to the bespoke assertions written by humans
- Mining helper assertions is still useful given that they can meaningfully help in proving larger ones
- *Writing assertions is hard* seems to be largely solved. Quality may be questionable but LLM can easily generate workable assertions
- Formal test benches are rarely complete and coverage plays a huge rule in making them complete
- CEX mining?
	- Can we use the counter examples to bug localize?
	- In software, you can convert stack traces to a RAG collateral and find the cosine similarity between them to pin point the location of a bug
- The two main problems to solve are
	- Convergence
		- Bespoke assertions  + helper assertions
	- Bug localization
		- Cutting down on the deep state space




