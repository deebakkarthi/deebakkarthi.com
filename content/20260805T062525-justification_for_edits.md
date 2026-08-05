---
title: Justification for edits
date: 2026-08-05T06:25:25-04:00
tags:
mathjax: true
---
# Related
- [20260803T095353-rv26_todos](20260803T095353-rv26_todos.md)
- [20260802T105011-rv26_review_actionable_items](20260802T105011-rv26_review_actionable_items.md)
---

# <span style="color:red">TODO: We need to review the paper and make sure we never use these terms interchangeably.</span>

The criticism isn't baseless. *Not Solved* offers less information than *Falsified*. But our central claim was that these *Falsified* assertions require **runtime confirmation**. *Not Solved* assertions require **runtime assumptions**. Therefore, from Periscope's POV, they are largely identical. 
This is in stark contrast to $\mathsf{Cat-1}$, which are bound to be true in **all** situations. At that point in the workflow, we are merely looking for these $\mathsf{Cat-1}$ assertions. Anything other than unconstrained guarantees are the same.

##  Edit

We have to be clear that we are not saying *Not Solved* and *Falsified* are the same thing. At the same time convey that for the purposes of our work, they appear to be the same.

## Locations
- pp. 4
	- Changed it to <span style="color: yellow">We interpret the tools' categories as *Proven* and *Not Proven*</span>
		- I think using *interpret* feels better as we are not saying the tools classifies them as such but we interpret them as so
	- Changed the footnote to be <span style="color: yellow">An assertion can be *proven*, *falsified*, or *not solved*. We combine the latter two into *Not Proven*. Though they are wildly different, from PERISCOPE's point of view, any assertion without unconstrained guarantees are functionally the same, requiring further runtime confirmation/assumptions</span>
		- First draft. Have to make changes
- pp. 15
	- I don't think this requires any change
	- We are just explaining how a $\mathsf{Cat-3}$ can occur.
	
# <span style="color:red">TODO: I thought we were clear about this, but lets further highlight that our approach does not assume runtime-consistent assertions are necessarily valid invariants - and that we have an approach to ‘rollback’ falsified Cat-3s.</span>

## Section 4.5
> *We first improve the coverage of both simulation and emulation workloads.
> After a desirable level of coverage is achieved, indicated by a reduction in the size
> of the appropriate categories, we attempt to close the FV-RV gap by utilizing
> two feedback strategies: First, we use consistent Cat-3 assertions to refine the
> RV workload, increasing its coverage.*


<div style="color: magenta">
- The previous paragraph mentions iterating till coverage is satisfactory and then proceeding with this. We directly contradict that by saying *increasing its coverage*.
</div>


<div style="color: magenta">
- This paragraph is also the first mention of the work *iteration*. Though it is apparent from Fig. 3, that PERISCOPE is a cyclic workflow, we never explicitly say that it is.
</div>


<div style="color: magenta">
- When we say *consistent Cat-3 assertions*, we have to make sure that this refers to the **smaller** assertions. Simply converting Cat-3 to assumptions proves them trivially. 
</div>


<div style="color: magenta">
- We also don't talk about the hierarchy of assertions and how smaller, less complex ones build on one another. Sec. 4.2 just says we use HARM. Sec 5.3 shows us using two templates but we never comment on their connectedness or the hierarchy in terms of complexity.
</div>