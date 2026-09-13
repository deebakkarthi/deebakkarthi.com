---
title: "Vector Space"
date:  2026-09-05T18:36:43-04:00
tags:
mathjax: true
---

A vector space $V$ over field $F$ is an abelian group $V$ with an operation called *scalar multiplication* defined on field $F$.

Scalar multiplication is as defined as $V \times F \rightarrow F$ and it should satisfy the following axioms

# Axioms

Usually when you want to prove something is a vector space, remember these **8 axioms**. I know that you can just state $V$ is an abelian group but actually listing down the following seems to be standard procedure. Whenever you hear vector space, just think of these 8 axioms. Notice the last 4 are new. They pertain to the new operation of *scalar multiplication* that we define.

1. Associativity of vector addition
	- $\mathbf{x}+(\mathbf{y}+\mathbf{z}) = (\mathbf{x}+\mathbf{y})+\mathbf{z}$
2. Identity of vector addition
	- $\mathbf{x} + \mathbf{0} = \mathbf{0} + \mathbf{x} = \mathbf{x}$ 
3. Inverse of vector addition
	- $\mathbf{x} + \mathbf{x^{-1}} = \mathbf{x^{-1}} + \mathbf{x} = 0$
4. Commutativity of vector addition
	- $\mathbf{x} + \mathbf{y} = \mathbf{y} + \mathbf{x}$
5. Compatibility of scalar multiplication w.r.t field multiplication
	- $(ab)\mathbf{v} = a(b\mathbf{v})$
6. Identity of scalar multiplication
	- $1\mathbf{v}=\mathbf{v}$
7. Distributivity of scalar multiplication w.r.t vector addition
	- $a(\mathbf{x} + \mathbf{y}) = a\mathbf{x} + a\mathbf{y}$
8. Distributivity of scalar multiplication w.r.t field addition
	- $(a+b)\mathbf{v} = a\mathbf{v} + b\mathbf{v}$