---
title: Meeting with Kevin
date:  2026-05-26T11:00:32-04:00
tags:
mathjax: false
---

TODO

Category-1 rules missed by bps but in HARM

Prove rules with Global constants

# Thoughts

- What to do about coverage holes? How can we assume stuff if some of those assumptions can be proven false under different workloads? Doesn't that make our whole house of cards fall down?
	- Yes. It does. It would be optimal if we can be sure that the assumptions are as good as rules but I feel like that is what we did during our first run
	- When there are no assumptions there are so few rules. Is that a bad thing? Idk but it is highly unlikely that a design of this magnitude can be expressed with so few rules. 
	- How do you even come with workloads that exercise different signal pathways. It isn't straightforward.
	- I argue that any assumptions that an engineer may put on their environment can also fail. That is a pain-point of formal verification. Are those assumptions better than the ones we "mine"? I would argue they aren't that much better.