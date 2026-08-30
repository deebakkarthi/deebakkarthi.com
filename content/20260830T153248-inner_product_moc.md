---
title: "Inner Product MOC"
date:  2026-08-30T15:32:48-04:00
tags:
mathjax: true
---
- Inner product is a generalization of the euclidean *dot product*
- It is denoted by $\langle\cdot,\cdot\rangle$
- It has to satisfy certain properties but I don't think I will go into what those are
- It gives intuitive sense of lengths, angles, etc. for any vector space

# Important details

## Every inner product induces a valid norm
If you have some inner product $\langle\cdot,\cdot\rangle$ then you can define a *norm* as follows

$$
||u|| = \sqrt{\langle u, u\rangle}
$$

## Inner product spaces are a proper subset of normed vector spaces
- Every inner product space has a *valid* norm induced by it.
- Not every normed vector spaces have a valid inner product.
	- Apparently out of all the $p$-norms only $p=2$ i.e the euclidean norm has a valid inner product that can be derived.
	- Refer https://en.wikipedia.org/wiki/Polarization_identity