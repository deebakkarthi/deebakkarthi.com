---
title: Coverage
date: 2026-04-08T19:38:07-04:00
tags:
mathjax: true
---
# Coverage
- A rudimentary search on [Scholar](https://scholar.google.com/scholar?q=formal+verification+coverage) gives us this paper [chocklerCoverageMetricsFormal2006](chocklerCoverageMetricsFormal2006.md). This seems to be the most cited paper on *defining* what coverage means in a formal environment.
- The summarize this one sentence, they define coverage of an entity (this may be a line of code, latch, signal, etc...) as a specification failing on a mutated design without that entity. Here *without* is polymorphic in that it means different things for different entities - signals should be inverted, lines of code should be removed, etc...)
- This seems to be the basis for all types of coverage. This leads me to believe it would be incredibly hard to come up with new metrics. Even if we do, it would be pretty much impossible to implement them efficiently. It seems to me that evaluating for a whole set of assertions is easier and more efficient than evaluating for a single assertion.

Let us take for example line coverage

| Mutant | Assertion 1 | Assertion 2 | ... | Assertion N | Covered |
| ------ | ----------- | ----------- | --- | ----------- | ------- |
| L1     | Proven      | Failed      |     | Proven      | Yes     |
| L2     | Failed      | Proven      |     | Proven      | Yes     |
| ...    |             |             |     |             |         | 
| L_m    | Proven      | Proven      |     | Proven      | No      |

Here each mutant is a design with that line removed. Covered is defined as $\bigoplus\limits_{n} \neg\text{assertion}_n$ i.e we at least want one assertion to fail. Assuming some arbitrary complexity  $V$ of performing the verification, then the complexity of this coverage is $O(M\times N) \times V$. 
Some optimizations include stopping on the first failed assertions, limiting the assertions to be tested to just the cone of influence etc...

- The point being that this is best left to the formal too. Hence, We are, to some extent, bound by whatever coverage metrics our formal tool provides.
- We can measure the *usefulness* of an assertion in some dimensions other than coverage but we haven't found one yet.


