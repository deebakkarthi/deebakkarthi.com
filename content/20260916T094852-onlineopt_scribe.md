---
title: "2026/09/14 onlineopt scribe"
date:  2026-09-16T09:48:52-04:00
tags:
mathjax: true
---
$\newcommand{\R}{\mathbb{R}}$
# Follow the Regularized Leader
Follow the leader with a $\mu$-strong convex function

More stability but we also induce bias

$R \le \frac{1}{\eta}(\ldots)+\eta(\ldots)$

You can see two terms but they are reciprocals of each other

So when you increase $\eta$ it has opposite effect on the terms

This is the bias stability tradeoff

We need to find a $\eta$ that is good at both

Stability is bounded by

$||X_t - X_{t+1}||\le \frac{\eta}{\mu}||\nabla f_t(x_t)||_\ast$

As you increase $\eta$ you increase the stability but also incur a bias

# Role of Entropy Regularization

Regularization serves two purposes

1. Exploration:  $p_t(i) > 0, \forall i$
	 - Meaning every option has a non-zero probability
	 - This is caused by having a *steep boundary*
2. Stability : $p_t \approx p_{t+1}$
	- The probabilities don't vary drastically between the rounds
	- This is caused by having *curvature*

For our uses, we want **stability**. Exploration is only useful when we have limited information about  $l_t$. Since we get the full $l_t$ we don't really have to explore.

# OCO with gradient feedback
- We kinda glossed over the fact that $f/\nabla f$ will be revealed to us. The algorithms we discussed will not work without knowing the full $f$. These scenarios are in fact distinct.
- But we can convert it to a regular OCO problem by doing the following
	- Define a new function $g_t(x) = \langle x, \nabla f_t (x_t) \rangle$ and run your algorithms on this

## Why does this work?
- Remember the best part about convexity: local information translates to global information
	- More precisely, local gradients can tell you global information
- $f_t(x) - f_t(x^\ast) \le \langle x_t - x^\ast, \nabla f_t(x_t) = g_t(x)$
- This is due to the fact that $f$ is a convex function

# Implicit Online Mirror Descent

$X_{t+1} = \arg\min_{x\in X} \\\{f_t(x) + \frac{1}{\eta} D_\psi(x, x_t)\\\}$

Notice the key difference, we only consider $f_t(x)$ instead of $\sum f$

# Online Mirror Descent

$X_{t+1} = \arg\min_{x\in X} \\\{\langle x, \nabla f_t(x)\rangle + \frac{1}{\eta} D_\psi(x, x_t)\\\}$

When $D_\psi$ is KL divergence, then exponential weights is recovered.

# Follow the Perturbed Leader

First we have to define a new game which is weaker than the version that we have used here

## Online-*linear*-optimization with *Weak* adversary

Assume we have some *convex* set $\mathcal{X}\subset\R^d$

For $t\in [T]$:
1. Adversary picks some *linear* loss function $f_t(x) = \langle x, l_t \rangle$
2. The learner makes a decision $x_t \in X$
3. Adversary reveals $l_t$


Notice how the order is now flipped. The adversary has to pick a loss function without any knowledge of the *current* decision. It would still have knowledge of all the past decisions as well as the algorithm used by the learner.

Notice that the loss function is also **linear** instead of being **convex**.