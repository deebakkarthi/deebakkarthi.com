---
title: Multivariate Gaussian Distribution
date: 2026-01-20T18:04:16-05:00
tags:
mathjax: true
aliases:
  - Joint Normal Distribution
  - Multivariate Normal Distribution
---
This is the 2D or higher dimension version of [20260120T172840-gaussian_distribution](20260120T172840-gaussian_distribution.md)

- Assume we have two random variable $X, Y$
- Let them be normally distributed on their own
- If we have a function $f(x, y)$ that represented the probability of both of them occurring together we have sort of have a 2D PDF of the two variables
- They form a *gaussian surface* in $\mathbb{R}^3$

![](../assets/Pasted%20image%2020260120182617.png)


How would we describe this?
- In 1-D we only need two numbers -  mean and standard deviation
- But in 2D we have 4 quantities
	- Mean vector
	- Variance of X
	- Variance of Y
	- Co-variance of X, Y
- Concisely we can represent the variances as a [covariance matrix](20260120T185631-covariance_matrix.md)

$$
\Sigma = \begin{bmatrix}
\mathrm{var}(X) & \mathrm{cov}(X, Y)\\\\
\mathrm{cov}(X, Y) & \mathrm{Var}(Y)
\end{bmatrix}
$$

- We can denote the mean vector as $\pmb{\mu}$

$\mathcal{N}(\pmb{\mu}, \Sigma)$


This is still very similar to our 1D example. The mean here is a mean vector and the covariance matrix is just the variance of a vector in $\mathbb{R}^2jjjjjjjjjjjjj:w
$