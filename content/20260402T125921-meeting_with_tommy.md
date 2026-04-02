---
title: Meeting with Tommy
date:  2026-04-02T12:59:21-04:00
tags:
mathjax: false
---
- Certified designs from open core.
- Assertion bench has too much
- They have tb too. I was to generate traces.


Coverage guided reduction in the number of assertions
"good" assertions


# Meeting Notes
- Quantifying the assertion quality is the most important thing
- This translates across projects. So would be a great contribution
- Move to even smaller designs. Things like a 1-bit adder, flip-flop etc... So that you can reason effectively
- Objectively prove that coverage is the most important thing. #(assertions) is meaningless without assertions
- Rerun HARM and Goldmine 
- Measure how long lean takes to run stuff. See if you can make a comparison on the time front
- Coverage guided assertion
	- Can you construct a minset of assertions?
	- Given a large set of assertions, measure the coverage first. Then remove an assertion and measure coverage. If the coverage doesn't reduce then throw out the assertion
- Can you detect tautological or trivially true assertions?
- How to deal with semantically duplicate assertions ?
- Develop small tools that claude can run to improve mining
	- Example would be a hierarchy tool
	- A tool that can return the wires of the parent
- Take a look at claude code's source and see if there are any inspiration that you can take from that