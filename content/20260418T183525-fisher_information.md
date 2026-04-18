---
title: Fisher Information
date:  2026-04-18T18:35:25-04:00
tags:
mathjax: true
---

# Layman's explanation

Let's suppose you have some unknown parameter $\theta$ and an  observable random variable $X$ which depends on $\theta$ in some manner. Can we find out the value of $\theta$ using the values of $X$? If we have multiple random variables that depend on $\theta$ how do we pick the best one? This is the question answered by *Fisher information*

# Example
I stole this from some YouTube video

- Suppose you want to find out your stomach's internal temperature. Let this be our $\theta$.
- As you can imagine, it would be pretty hard to measure it in a noninvasive manner. But you have some measurable random variable such as your mouth's temperature and the temperature of your armpit
- These random variables aren't perfect though. Your mouth could be hotter/colder based on if you just had a cup of coffee or an ice-cream. Similarly your armpits might be hotter if you had just worked out.
- Having these two ways of measurement how do we compare them?
- How much *information* does the temperature of the mouth/armpit give us about the stomach?

# Actual Definition

First Information is the variance of the [score](20260418T190541-score.md) of the likelihood function.

Read this as fisher information given by random variable $X$ about $\theta$ is

$I_X(\theta) = \text{E}[(l(x; \theta) - \text{E}(l(x, \theta)))^2]$, where $l$ is the score

Let us first calculate the expectation of $l(x; \theta)$

$l(x;\theta) = \frac{\partial}{\partial\theta}\ln p(x; \theta)$

For the sake of simplicity let us assume that $\theta$ is a single variable and the all the derivatives will be univariate.
WLOG this can be extended to multivariate functions.

Since this is a continuous variable we need to integrate 

$\int p(x; \theta) \frac{\partial}{\partial\theta}\ln p(x; \theta) dx$

$= \int p(x; \theta) \frac{1}{p(x; \theta)}\frac{\partial p(x; \theta)}{\partial\theta}   dx$

$= \int \frac{\partial p(x; \theta)}{\partial\theta}   dx$

We can (apparently) flip integrals and derivatives

$= \frac{\partial} {\partial\theta} \int  p(x; \theta)    dx$

As $p$ is a pdf, $\int p(x; \theta) dx =1$

$= \frac{\partial} {\partial\theta} (1)$

$= 0$

Notice that we don't really care what $p$ is. No matter what $p$ is, the expected value of score is 0

Hence, fisher information boils down to 

$= \text{E}[l^2]$

$= \text{E}[(\frac{\partial}{\partial \theta}( \ln p(x; \theta) ))^2]$

It is the expected value of the squares of the derivatives of log likelihood
