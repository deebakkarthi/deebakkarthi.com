---
title: Mutation
date:  2026-03-14T13:25:10-04:00
tags:
mathjax: true
---

# Questions
- Is *just* coverage enough to quantify how good a test suite is?
	- No
- Can a test suite with less coverage actually detect a fault that a fully covered one? Give an example
	- Yes
	- It is fairly trivial to write a test suite to just go through two branches of code without revealing the fault
	- ```python
	  def f(x):
		if(x % 2 == 0):
			  some_complex_op
		else:
			some_other_complex_op
			fault_if_x_is_3
	  ```
	  - For the above imaginary code, x = 2 and x = 5 has 100% branch coverage
	  - But fault is only revealed when x = 3
- What is program mutation
	- Program mutation is changing the source code of the program
- Doesn't this seem similar to fuzzing? How is it different from fuzzing?
	- Fuzzing is changing the input. Mutation is changing the program
- Express mutation as a mathematical function
	- $F: P\rightarrow mut(P)$
	- Where $P$ is the source program and $mut(P)$ is the set of all mutations of $P$
	- $F$ maps the given program to one of its possible mutants
- Give some examples fo mutations
	- Simple examples would be creating classes of operators such as arithmetic, logic, relational etc.. and picking a different one
	- Example: let $+ \in \{+, -, \times, \div\}$. Wherever $+$ is encountered, replace it using an element from this set
	- These simple changes reflect the kinds of errors that a programmer is prone to making
- What does it mean for a mutant to be killed?
	- For a mutant to be killed, at least one of the test cases should have different behavior
- When can a test-suite be called mutant adequate ?
	- If all the mutants are killed
- When can mutation testing tell us exactly how many faults are in the program?
	- Assume we have extremely good mutations, every possible fault of a program is just a mutation
	- So we can exactly say that $x$ faults are left by the number of mutants that are alive
- What is the underlying hypothesis behind Mutation testing?
	- The underlying hypothesis is the *Intelligent Programmer Hypothesis*
	- Programmers don't write random programs
	- Even a wrong program is very close(Levenshtein distance) to the correct one
- What is equivalent program mutation?
	- Some mutations can give back the same program.
	- `x<y` is the same as `y>x`
- Is it easy to determine equivalent mutation?
	- No. It is NP-hard to determine equivalent mutation
	- Though it may seem very easy from the above example, think about arbitrary mutations
	- How can you *prove* that two programs are the same for *all* inputs?
	- And how would an algorithm compute this?
- What are the two kinds of mutants that remain alive?
	- Equivalent mutants
	- Killable mutants that we missed
- Give the formula for mutation score
	- $\frac{100 \times (D)}{(N-E)}$ where $N$ is the total number of mutations, $E$ is the equivalent mutants and $D$ is the number of mutants killed
- Give the formula for total faults, factoring in equivalent mutations
	- Total Faults = Faults Found * (N – E) / D
- How do you reduce mutation costs?
	- Multiple mutants
	- Don't run the tests on all mutants
		- If a mutant is killed once, it doesn't need to be run on others
		- Check if the test will actually affect the mutated part
	- Parallelism
- What are the two drawbacks of mutation testing?
	- Equivalent mutants
	- Cost
- Is mutation testing effective?
	- Yes
- Mention some other places where mutation can occur instead of just raw string manipulation of the source code
	- Other program representations such as AST, CST