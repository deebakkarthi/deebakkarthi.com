---
title: Meeting with Kevin
date:  2026-07-12T17:38:02-04:00
tags:
mathjax: false
---

# Preparation
- Ask Brad about typical FE workflow
	- Is writing specs from RTL inherently flawed?
	- What tool would have the least resistance of getting adopted?
		- I'm imagining an LLM that can generate properties that are provable 95% of the time from RTL can be useful
		- Given that it has good coverage (according to jasper)
		- You can just plug this in any workflow
		- We are not using this to  sign off on anything
		- This just a very fast way of kickstarting a FV campaign
		- One big thing I wanna stress on is that properties are a very efficient way of encapsulating the behavior of a design
		- Proven properties that are due to a design bug can help to find the bug faster than testing or manually checking the code
			- A contrived example is globally stuck at
			- It sticks out like a sore thumb
- This will shape how I do my evaluation
- Right now my path has been to just use RTL
- Purely RTL and check if the LLM can generate assertions that hold true against this
- I don't really care it is correct in the absolute sense. Once we are sure that LLMs can "understand" RTL and generate assertions that are true about this design, we can use them for better tasks down the road.

# Meeting Minutes

- Does Texada mine implication rules for which the LHS is always false?
	- Does that imply that any constantly low signal can be a rule?

# What would make this more interesting?
- There is a wall among emulation, simulation and formal verification
- Can Periscope bridge any of these walls?
- At least at IBM, the logistics will matter a lot
- Any approach that can generate assertions is valuable in and of itself but for it to be implemented practically the friction to adopt should be very low
	- We can worry about the implementation part later. First of all, we have to clear about the concept. Are there any holes in our concept?
- There is currently no clear direction on how to use LLMs in verification
- It is still very much in its infancy
- Assertions written by humans are
	- hard
	- takes times
	- Coverage varies wildly based on the effort
	- Carried over from older projects
	- extremely light weight
	- not that sophisticated
		- Most often not even temporal
		- They often look like simple asserts we would see in C
- What makes these assertion special is their portability. SVA, or its equivalent, can be used in emulation, sim and in hardware.
- Brad says that most specs are too complex and hard for a human to sit down and covert to LTL. So spec documents are almost disconnected from practical assertions that are currently written
- The heavy lifting in verification is done by **unit tests** in simulation
- Formal engineer then wrap a C++ harness over it and write bespoke TB that can verify higher level properties
	- These are called as *checkers*
	- They are not exactly assertions
	- They are not portable
	- They uses *scoreboards* and keep track of stuff over 1000s of cycles
	- They require latches and extra circuitry (at least conceptually, they are not really synthesized)
	- The assertions we write tend to hold over all of time. But checkers are doing a very bespoke thing
	- ABV tries to move some aspects of this checker into synthesizable, portable LTL assertions
	- Any interesting future direction might to be generate these higher level checkers from traces or generate properties on these checkers
- Use this mining to constrain simulation?
	- This would be the reverse of what we are doing right now
	- Mine using FPGA itself
- Automatically generate unit tests?
	- usually unit tests are carried over across design iterations
	- Can we automate this process?
- Assertion fingerprint
	- Can we generate a minimal set of assertions that represent a specific design?
	- In the future if this design ever changes then some of these assertions are sure to fail