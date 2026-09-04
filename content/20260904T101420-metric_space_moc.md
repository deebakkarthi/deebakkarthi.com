---
title: "Metric Space"
date:  2026-09-04T10:14:20-04:00
tags:
mathjax: true
---
$\newcommand{R}{\mathbb{R}}$
A metric space is a [space](20260904T101354-space_moc.md) where the structure comes from a function $d$ which is called a *metric*.

The ordered pair $(M, d)$ is a metric space where $M$ is a set and $d$ is $d: M \times M \rightarrow \R$ and $d$ satisfies the following

1. $d(x, x) = 0$
2. Positive: $d(x, y) > 0 : x \ne y$
3. Symmetric: $d(x, y) = d(y, x)$
4. Triangle Inequality: $d(x, z) \le d(x, y) + x(y, z)$

# Relation to topology

> Every metric space is also a topological space

That is given a metric $d$ for some set $X$, we can always define a topology $\tau$.

We call this topology the *metric topology*

A metric is a very easy way to define bases of a topology.

$B_r(y) = \{x \in X : d(x, y) < r\}, r> 0, y \in X$

The topology is the union of these *open balls*