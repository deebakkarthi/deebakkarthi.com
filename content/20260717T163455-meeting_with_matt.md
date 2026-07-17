---
title: Meeting with Matt
date:  2026-07-17T16:34:55-04:00
tags:
mathjax: false
---

# Grand vision
- Incomplete assumptions are the root cause of many verification failures
- Given a set of observations, can we "mine" assumptions required to prove them?

# Minutes
- Most funding opportunities require heavy use of AI
- The primary bottleneck in verification is 
	- How to write a good specification
	- How to have good assumptions
- Verification will surely become mainstream
- Verus, a Rust-based verifier, is so fast that it could be run as part of a standard CI/CD pipeline and still be viable
- LLMs should **not** be used to translate NL to formal specifications
- They should surely be used to generate proofs given a formal spec
- The former requires so many checks and test that it just isn't worth it
- LLMs are sure to go wrong in this task. If you are wrong in proving something you are just wrong. If you generate the wrong spec, the golden truth, then you are in a lot of trouble
- The main selling point of verification is not correctness, which would be the intuitive reason, it is the ability for fast iteration
- Critical systems have very slow iterations of improvement as the consequence of inducing a new bug is so fatal that the performance gain is ignored.
- But if we could verify that the new changes haven't broken anything then we are golden. This saves millions of dollars when used on a high frequency critical component like authentication
- The main problems in verification are
	- Accurate domain model
	- Reasonable assumptions
	- Congruence between model and observation
- Can we extend Periscope to be more general than hardware?
- Abductive reasoning attempts to convert uninterpretable functions to partially interpretable functions
	- Most SMT solvers can happily work with an opaque API by just knowing its signature
	- But it would be so much more helpful if we could just derive small, weak properties about them
	- The simplest example would be $\forall x, f(x) > x$ for some function $f$
- To convert Periscope to be fully abductive, we require the $\mathsf{Cat-3}$ categorization to be automated in some fashion

# My work
- Compare LLMs vs dynamic miners?
- Compare with and without specs
- Periscope on a sophisticated core like BOOM

