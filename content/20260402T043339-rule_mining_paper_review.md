---
title: Rule Mining Paper Review
date:  2026-04-02T04:33:39-04:00
tags:
mathjax: false
draft: true
---

# Introduction.tex
> Manual Assertion-Based Verification (ABV) is time-consuming and prone to errors, preventing meaningful scaling to more complex designs. 
- I don't know about "error prone". We will never match the usefulness of hand-written assertions. Can we write "bad" assertions - sure. But rule mining can only tell us about the implemented specifications, which will never be the complete picture. While this is a great starting point, it cannot replace writing assertions by hand at some point. Having an oracle generate assertions for you code is great. It is much better than having nothing but any rule dynamic approach can only reason about "seen" behavior. 