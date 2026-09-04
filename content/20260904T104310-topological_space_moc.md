---
title: "Topological Space"
date:  2026-09-04T10:43:10-04:00
tags:
mathjax: true
---

A topological space is a [space](20260904T101354-space_moc.md) where the concept of *openness* is defined.

# Formal definition
A ordered pair $(X, \tau)$ is topological space where $X$ is a set and $\tau$ is a collection of subsets of $X$ which are considered *open* and has to satisfy the following
1. $\phi, X \in \tau$
2. Closed under arbitrary (possibly infinite) union: $\displaystyle \bigcup_{t \in \tau}^\infty t \in \tau$ 
3. Closed under finite intersection: $\displaystyle \bigcap_{t \in \tau}^{i} t \in \tau$

# Basis
You might notice that defining this $\tau$ could be a pain-in-the-ass. You might also notice that a smaller subset of $\tau$ could possibly enumerate all of $\tau$. This is the basis for [*basis*](20260904T130810-base_topology_moc.md)  (I'm funny). 