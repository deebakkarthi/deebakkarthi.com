---
title: Distributed Deadlock avoidance
date: 2023-09-06T01:50:40-04:00
---

- [Deadlock avoidance](Deadlock%20avoidance.md) in the context of distributed systems is not really feasible. Algorithms such as [Banker_s algorithm](Banker_s%20algorithm.md) have a complexity of $O(n*n*m)$
- In addition to the delays in the communication channels, this makes it really inefficient to implement an algorithm to avoid deadlocks.
