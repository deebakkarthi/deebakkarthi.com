---
title: Meeting with Kevin
date:  2026-07-29T18:31:27-04:00
tags:
mathjax: false
---

# New directions from Cadence meeting
- Convergence
- Bug hunting
- Bug localization

- End-to-End verification is called as convergence
- Complex assertions cannot be mined
- But LLM can generate them from specs
	- Matt directly contradicted this
	- But that was in relation to software

- Periscope's helper assertions can help constrain the  formal environment thereby solving all of the above problems
- If we could somehow write SVA on hardware latches then that would be helpful
	- These are the same complex assertions the cadence folks were talking about
	- Hardware latches are written to store some state and then we write assertions on that state
	- Certain things cannot be captured using SVA over signals
		- The simplest example is counting
	- This is the main job of FV engineers at IBM
	- These checkers are simulated, emulated but removed before fabrication
- We could better position Periscope as *convergence solving*
	- Remove the restriction to just signals
	- Extract from checkers
	- Figure out better templates
	- Expressions instead of signals

# Bug hunting
- Shallow bugs are often erroneous. The power of FV is finding deep bugs
- But it is really hard to go that deep
- We need good constrains to force the FV engine to look deep
- The main goals is to find bugs rather than proving stuff

RV-consistent  rules are helpful because they can be converted to assumptions


# Bug localization
- Sometimes the specification and the implementation are not congruent
- This results in bugs
- Can we localize the location of these bugs?


# Prevalence of specs
- Formal specs are largely absent in academia
- Even in big companies specifications are largely resident in the tribal knowledge of the engineers
	- There are exceptions to this such as IEEE-754 in which you exactly know what you are implementing
- In the cases where no spec is available, engineer do the following
	- Guess intent by looking at the code
	- Guess intent by the general category of the design. For example, there are many properties that are immediately apparent for an arbiter, regardless of its type.