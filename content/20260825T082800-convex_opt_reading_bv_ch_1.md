---
title: "B&V Ch. 1"
date:  2026-08-25T08:28:00-04:00
tags:
mathjax: true
---
$$
\newcommand{\R}{\mathbf{R}}
$$

# What is *Optimization*

Let's suppose we have some multivariate real-valued function $f: \R^n \rightarrow \R$
$f$ takes in vectors $x = (x_1, \ldots, x_n)$ as input and outputs a single value
What if we want to find the $x$ that results in the smallest (largest) output value?
Since life isn't all sunshine and rainbows, we usually have some constraints on what value $x$ can take
Let us describe this as a family of functions $c_i: \R^n \rightarrow \R, c_i(x) \le b_i: i=1, \ldots, m$
Each $c_i$ is a *constraint function* and $b_i$ is a *limit/bound*

<span style="color:magenta">*For some reason, I don't really like having the constraints along with the objective function. I feel like when you index you expect output of the same kind. Though it makes some of the definitions repetitive, I like having them separate.*</span>
## Solution
$x^*$ is the *optimal* solution to this optimization problem, if $\forall z, \forall i: c_i(z) \le b_i, f(x^*) \le f(z)$

This translates to $x^*$ having the smallest $f$ value among all the $z$s that satisfied all the constraints.
This set of $z$s are all the *solutions* to this problem.

# Types
We classify optimization problems based on the characteristics of both the objective and the constraint functions

## Linear Problems
If
$$
f(\alpha x + \beta y) = \alpha f(x) + \beta f(y)
$$
and
$$
\forall i: c_i(\alpha x + \beta y) = \alpha c_i(x) + \beta c_i(y)
$$

<span style="color:magenta">*This is just the definition of linearity constraint*</span>

## Non-linear

All problems that don't satisfy the linearity constraint are *Non-linear*.

## Convex

Convexity can be thought of as a lighter version of linearity.
if
$$
f(\alpha x + \beta y) \le \alpha f(x) + \beta f(y)
$$
$$
\forall i: c_i(\alpha x + \beta y) \le \alpha c_i(x) + \beta c_i(y)
$$
hold
$$
\forall x, y \in \R^n, \alpha + \beta  = 1, \alpha \ge 0, \beta \ge 0
$$

The "parts" now only have to be lesser than or equal to the "sum"

# Application
<<insert *I'vE NeVeR HaD tO diFFereniate iN rEaL LiFe* jokes>>

Optimization problems are abstractions over making the best possible choice given some vectors from $\R^n$.
Usually, we think of $f$ as the *cost* of making that choice. This mold suits so many real world scenarios.

# Ok. This sounds great but how do we find $x^*$ ?

ITS HARD. Most optimization problems are very hard to solve and even harder to solve efficiently.

The two exceptions to this rule that we will discuss is *Least Squares* and *Linear Programming*

We **don't** know if convex optimization is as much as of an exception as the above two even with few efficient methods at hand
