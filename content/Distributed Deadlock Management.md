---
title: Distributed Deadlock Management
date: 2023-09-06T01:50:40-04:00
---

# Ways to deal with a [Deadlock](Deadlock.md)
There are 3 common ways to deal with a deadlock. They are 
1. [Distributed deadlock prevention](Distributed%20deadlock%20prevention.md)
2. [Distributed Deadlock avoidance](Distributed%20Deadlock%20avoidance.md)
3. [Distributed Deadlock Detection](Distributed%20Deadlock%20Detection.md)

# Why is deadlock management tricky in the context of distributed systems?
1. Each site doesn't have knowledge about the current state of the system
2. Each inter-site communication has a finite and unpredictable delay