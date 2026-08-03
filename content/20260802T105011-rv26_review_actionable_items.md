---
title: RV26 Actionable Items
date:  2026-08-02T10:50:11-04:00
tags:
mathjax: true
---

Deadline for camera-ready version **August 12**

**2 additional pages** are available

# Feedback
- Conflation of falsified and not solved
	- Falsified provides more information that not-solved
- $\mathsf{Cat-3}$ doesn't mean anything. Just because it holds over finite traces doesn't make that an invariant nor a valid assumption
	- <mark style="background: #ED1842;">This is true and a valid concern. We are never suggesting that it is a *valid* assumption rather it is a *reasonable assumption. The FPGA workloads are very extensive </mark>
- Union-ing assertions causes trivially faulty assertions to be included and thus inflating the totals
	- <mark style="background: #ED1842;">This too is very valid. Right now we are just letting Jasper eliminate these</mark>
	- <mark style="background: #ED1842;">There isn't really a proper way to solve this except . In order to scale we need to mine assertion parallelly</mark>
- Cost of the Runtime Monitoring
	- <mark style="background: #ED1842;">This is an easy fix. Yasas can answer it</mark>
- Reads like a case study
- FPGA resource usage

# Action Items
- Differentiate falsified and not solved
- Mention FPGA usage


# Mentions of *Falsified* and *Not Solved*
- Footnote on page 4
	- Right now, we mention that *Not Proven* encompasses both *Falsified* and *Not Solved*
	- We did this because from our perspective they are **not $\mathsf{Cat-1}$**, which was the initial categorization we required.
	- I think that is the only place we used *Not Proven*. We wanted to include this just for the sake of completeness but never thought it would become a thorn in our side

# $\mathsf{Cat-3}$ being called *valid* in any sense


## Pg. 9
> We first improve the coverage of both simulation and emulation workloads.
> After a desirable level of coverage is achieved, indicated by a reduction in the size
> of the appropriate categories, we attempt to close the FV-RV gap by utilizing
> two feedback strategies: First, we use consistent Cat-3 assertions to refine the
> RV workload, increasing its coverage. We then convert Cat-3 assertions to as-
> sumptions to refine the FV environment. With each future iteration, we confirm
> that these assertion-made-assumptions continue to be consistent with runtime
> workloads

# Pg. 13

 > We subsequently imported these 52 Cat-3 global constant assertions as assumptions into the Jasper Gold 
 > environment and re-ran formal verification on the more ...

# Pg. 15
 
> In the first case, Cat-3 assertions become candidate assumptions that can potentially enrich the FV environment.

> After reasonable workload coverage is achieved, both Cat-1 and Cat-3 rules together can be used to constrain FV environments.

