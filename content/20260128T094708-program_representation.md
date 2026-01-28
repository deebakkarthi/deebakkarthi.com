---
title: Program Representation
date:  2026-01-28T09:47:08-05:00
tags:
mathjax: false
---

# Questions
- If two programs have different ASTs does that mean they are different?
	- Not necessarily 
	- Semantically they can be the same
- How do you determine a leader in a CFG?
	- First statement of a function
	- Target of a conditional statement
	- Very next statement of a conditional
- What is function coverage?
	- Every function is called at least once
- What is statement coverage?
	- Every statement is executed at least once
- Algorithm of achieving statement coverage
	- Add some instrumentation `t`
	- Measure coverage
	- If `t` increases coverage keep it, else throw it away
	- Repeat with different `t` until desired coverage
- What are some of the challenges in achieving statement coverage?
	- Dead code
	- Hard to reach code
	- Errors and exceptions
	- Defensive programming
- Examples of code instrumentation
	- `printf()`
	- `gcov`
	- `gcc` flags
- What is branch adequacy?
	- All conditions of a branch is executed at least once
- What is path coverage?
	- All paths of the CFG are traversed at least once
- What is MC/DC coverage?
	- Each condition in a decision is shown to independently affect the outcome of the decision.
- What is strength in the context of coverage?
	- Depends on Number of test cases
	- Coverage metric *A* is stronger than *B* if running the same test cases of *B* on *A* produces a smaller number
	- Doesn't depend on the number of faults
- Rank the coverage metrics based on strength
	- Input coverage
	- Path coverage
	- C-coverage
	- Statement coverage
	- Function coverage