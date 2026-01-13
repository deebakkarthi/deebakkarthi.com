---
title: 2026-01-12
date:  2026-01-12T17:20:41-05:00
tags:
mathjax: true
---

# Manifold Hypothesis
- Consider the CIFAR-10 dataset
- Each image is of the dimension $32 \times 32 \times 3$
- We can consider this dataset as a single vector of dimension $[0, 255]^{3072}$ 
- If we were to draw uniformly from this, we would never accidentally stumble upon a sample from CIFAR-10
- Why?
	- One reason is that the pixels aren't completely unrelated as we are drawing them
	- If a pixel is $0, 0, 0$ then its neighbors are  most likely $0, 0, 0$ or very close that white shade
	- It is highly unlikely that we can replicate this dependence by uniformly sampling each pixel independently
- The Manifold Hypothesis, in layman's terms, is that this higher dimensional data lives in a lower dimensional latent space of some kind