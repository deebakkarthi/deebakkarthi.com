---
title: "What can we learn from assertions that occur rarely"
date:  2026-06-17T16:30:49-04:00
tags:
mathjax: false
---
We know that LLMs generate different assertions every run. What can we infer from this behavior?
One obvious thing insight that we can get is if a certain class of assertions is under represented then the training data had the same distribution. 
This might be a problem if this class of assertions are really important. But to reach this conclusion we first need divergent behavior each run, the behavior follows a certain trend.

# Example
- Imagine if in a run of 10 SVABENCH benchmarks, we found that $G(A -> X(B))$ only appeared in one. This is in contrast to the other assertion which were present in every run. We can comment that the training data had that repeated class of assertions more and vice versa for the rarer one.
- This becomes a problem when the rarer class is actually important but the training data just doesn't reflect it for some reason.