---
title: "2026-08-26 onlineopt scribe"
date:  2026-08-30T12:51:29-04:00
tags:
mathjax: true
---
$\newcommand{\R}{\mathbb{R}}$

# Logistics
- We will **not** be having a Canvas
- HW will be on Gradescope
- Discussions will be on piazza
- Both Gradescope and Piazza have not been created yet

# Main topics that will be covered
- Online learning in non-static adversarial environment
	- Usually in machine learning, environment is stationary and we learn something (a policy, weight, etc.)
	- Online learning is when the environment is dynamic
- Games in Learning
	- this is when we create an artificial player just for the sake of improvement
- Learning in games
	- Actual multiplayer

# Prerequisites 
- Convex functions
- Convex sets

# Grading
- 4 Psets (50%)
	- These problem sets are considered **part of the course**
	- Meaning, there will be material that are covered by virtue of being in the pset and not taught in class due to time constraints
- 2 quiz (10%)
	- 75% from hw
	- 25% from lectures
	- 40 minutes
- Project (30%)

# What is *online*?
Though online has so many meaning in machine learning, the one that we are concerned about here is as follows
![](../assets/Pasted%20image%2020260830134234.png)

- We have some learner and an environment
- Let us have a time index $t$
- The learning makes a decision $X_t$ and the environment evaluates a loss function $f_t(X_t)$
- Then the environment reveals the **entire function $f_t$**
	> This is very important
- The learner then makes a new decision with this knowledge

The main difference between this and regular ML is that $f_t$ is usually i.i.d in regular ML. This is not the case here. The environment can change $f_t$. This make online learning very hard.

## How is this different from RL?
- In RL the *state* changes, the *environment* is constant
- $f_t$ is usually not subject to change

## Various meaning of *Online*
- In general *online* just entails some amount of **interactivity**
	- i.e we follow the general flow of *Decision->Feedback->Update->Repeat*
- But it can also mean the following
	- Computation
		- Incremental updates to the model
		- Mathematically $X_{t+1} \leftarrow X_t - \lambda \nabla f_t(X_t)$
		- Notice how we only use $X_{t}$ and not $X_{t-1}$ or $X_{t-2}$ or $X_{t-n}$
		- Not full model retraining just the last time step is used
	- Evaluation
		- Cumulative performance not just the final cost
	- Environment
		- Dynamic or adversarial environment

In this course our setting will be **cumulative evaluation and adversarial environment**.

# Formalization

We have some $\mathcal{X} \subset \R^d$

| Step | Learning                   | Adversary                                                               |
| ---- | -------------------------- | ----------------------------------------------------------------------- |
| 1    | Pick $x_t \in \mathcal{X}$ |                                                                         |
| 2    |                            | Pick some $f_t: \mathcal{X} \rightarrow \R$ (may depend on **$x_{t}$**) |
| 3    |                            | Reveal $f_t$ or $\nabla f_t(x_t)$                                       |
| 4    | Go to step 1               |                                                                         |


Our objective when playing this game is
$\displaystyle \min \sum_{t=1}^T f_t(x_t)$

# Why care about an adversarial case?
- Adversarial case, even if not real, represents some sort of $O()$ or the worst possible result
- IRL environment may just not be stationary. This is the simplest reason for caring about this.
	- Recommendation systems
	- Cyber security attackers
		- The attack patterns changes based on the patches(decisions)
- Though it may appear very bespoke, it is more general than you think.

# Games in learning
This is when we **create** an adversary for the sake of better learning. Examples for this include GAN, Boosting, learning with constraints

# Learning in Games
- Actual multiplayers
- Planning against strategic players
- Preventing algorithmic collusion in duopoly/oligopoly

# No-regret  online optimization
$$R = \underbrace{\sum_{t=1}^{T} f_t(x_t)}\_{\text{actual cost}} - \underbrace{\min_{x \in \mathcal{X}} \sum_{t=1}^T f_t(x_{fixed})}\_{\text{theoretical min}}$$

$$
R(T) = o(T)
$$
i.e
$$
\frac{1}{T}\sum_{t=1}^{T}f_t(x_t) - \frac{1}{T}\min_{x\in \mathcal{X}} \sum_{t}^Tf_t(x)
$$
Our optimizations has to be such that we don't perform poorer than a fixed optimizer who knows all the objective function but can only make a choice at the start. Our *dynamic/online* component shouldn't be worse than a static choice.
It has to be sub-linear in the number of rounds