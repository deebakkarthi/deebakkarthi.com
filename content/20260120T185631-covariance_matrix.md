---
title: Covariance Matrix
date:  2026-01-20T18:56:31-05:00
tags:
mathjax: true
---
Let $X, Y$ be two normally distributed random variables
Assume that we are in $\mathbb{R}^2$
Let $V$ be a vector that is of the form $[X, Y]^T$
Let us calculate the [Variance](20260120T184454-variance.md)
$$\mathrm{Var}(V) = \mathrm{E}[(V - \bar{V})^2]$$
Here squaring is defined as $VV^T$ for some vector $V$
$$ \mathrm{Var}(V) = \mathrm{E}[(V - \bar{V})(V - \bar{V})^T] $$

Decomposing this into individual components we get, 

$$
\mathrm{Var}(V) = \mathrm{E}\left[ \left( \begin{bmatrix} X \\\\ Y \end{bmatrix} - \begin{bmatrix} \bar{X} \\\\ \bar{Y} \end{bmatrix} \right) \left( \begin{bmatrix} X \\\\ Y \end{bmatrix} - \begin{bmatrix} \bar{X} \\\\ \bar{Y} \end{bmatrix} \right)^T \right]
$$

$$ \mathrm{Var}(V) = \mathrm{E}\left[ \left( \begin{bmatrix} X - \bar{X} \\\\ Y- \bar{Y} \end{bmatrix} - \right) \left( \begin{bmatrix} X - \bar{X} \\\\ Y - \bar{Y} \end{bmatrix} \right)^T \right] $$

$$ \mathrm{Var}(V) = \mathrm{E}\left[ \begin{bmatrix} X - \bar{X} \\\\ Y- \bar{Y} \end{bmatrix} - \begin{bmatrix} X - \bar{X} & Y - \bar{Y} \end{bmatrix} \right] $$

$$ \mathrm{Var}(V) = \mathrm{E}\left[ \begin{bmatrix} (X - \bar{X})(X - \bar{X}) &  (X - \bar{X})(Y - \bar{Y}) \\\\ (X - \bar{X})(Y - \bar{Y}) & (Y - \bar{Y})(Y - \bar{Y}) &  \end{bmatrix} \right] $$

$$ \mathrm{Var}(V) = \mathrm{E}\left[ \begin{bmatrix} (X - \bar{X})^2 &  (X - \bar{X})(Y - \bar{Y}) \\\\ (X - \bar{X})(Y - \bar{Y}) & (Y - \bar{Y})^2 &  \end{bmatrix} \right] $$

We know that expectation can be brought inside and composed

$$ \mathrm{Var}(V) =  \begin{bmatrix} \mathrm{E}(X - \bar{X})^2 &  \mathrm{E}(X - \bar{X})(Y - \bar{Y}) \\\\ \mathrm{E}(X - \bar{X})(Y - \bar{Y}) & \mathrm{E}(Y - \bar{Y})^2  \end{bmatrix} $$

We know that these are 
$$ \mathrm{Var}(V) =  \begin{bmatrix} \mathrm{Var}(X) &  \mathrm{Cov}(X, Y)\\\\ \mathrm{Cov}(X, Y)& \mathrm{Var}(Y)\end{bmatrix}$$

This is the covariance matrix of $V$