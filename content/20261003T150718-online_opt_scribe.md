---
title: "2026-09-16 Scribe"
date:  2026-10-03T15:07:18-04:00
tags:
mathjax: true
---

# Recap
So far, we have seen Online Convex Optimization and the OCO protocol. Specifically we saw two special cases of OCO - namely
1. Expert Problem
	- $\Delta_n$, a probability over $n$ choices is our decision set
	- The objective function $f$ is linear
2. Online Linear Optimization (OLO)
	- $\mathcal{X}$, a convex set, is our decision set
	- The objective function $f$ is linear

We also saw algorithm with the special property called *No-regret*. Some of them are
- Exponential Weights
- Follow-The-Regularized-Leader (FTRL)
- Follow-The-Perturbed-Leader (FTPL) on OLO with weak adversary

We also say the stability-bias tradeoff associated with these algorithms.

# Mechanism of FTPL

We saw that,

$$i_t =\arg\min L_{t-1}(i) +\frac{1}{\eta}z_t(i)$$

i.e the choice for the next round is determined by the cumulative loss up to that point plus a random perturbation.

We've preached about the importance of stability so far. Wouldn't adding this random noise make our algorithm **less stable**? - No.

$z_t(i)$ induces a probability distribution on $i_t$, effectively making it

$$\text{Effective }P_t(i) = \Pr\{\arg\min_{i\in[N]} L_{t-1} (i) + \frac{1}{\eta}z_t(i)\}$$

This has the effect of minimizing $\|P_t - P_{t+1}\|$

Hence, the effectiveness of FTPL could be explained by stability, as we have done for previous algorithms, rather than the intuitive notion that randomization somehow "tricks" the adversary. The adversary can easy simulate $z_t$ itself. It is not the reason why FTPL works. FTPL works because the randomization increases stability, just as a strongly convex regularizer did.

# History of No-regret algorithms
- The algorithms we've discussed so far are not discrete inventions
- They are based on cumulative research by various people
- But, roughly the timeline is as folows
	- Exponential weights - 1997
	- FTRL - 2000-2010s
	- FTPL - 2000-2010s
	
https://parameterfree.com/lecture-notes-on-online-learning/

# Two-Player Zero-Sum Games

https://haipeng-luo.net/courses/CSCI659/2026_spring/lectures/lecture4.pdf

We model interaction between agents, whose objectives are polar opposites, as *Two-Player Zero-Sum games*. One player's loss is another player's gain could be another interpretation of this setting. That is where the **zero** in Zero-Sum comes from. The *Utilities* have to be the negation of each other such that the summation would result in zero. *Rock-Paper-Scissor* would be the simplest example.

Mathematically, we represent this *game* as a bivariate function $f(x, y)$ where $x$ is the strategy of the *min*-player and $y$ is the strategy of the *max*-player. Hence, $f$ is min's loss function and max's reward function.

# Rock-Paper-Scissor
Our strategies are *pure* - meaning discrete.

$\mathcal{X} = \mathcal{Y} = \{\text{R, P, S}\}$