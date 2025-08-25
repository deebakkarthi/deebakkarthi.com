---
title: Distributed Mutual Exclusion
date: 2023-06-23T18:23:06-04:00
---

- Types of algorithms
- Criteria for algorithms
- Synchronization delay
- Response time
# Lamport's Algorithm
- Data struct used in lamport
- Channel type required in lamport
- Types of messages in lamport
- Two conditions under which CS is executed
- How to optimize lamport's algorithm
# Ricart-Agrawala Algorithm
- Channel type needed
- Types of messages
- Data struct used
- What happens when a REQUEST message is received
- When can a proc enter the CS?
- What happens when a proc exits a CS
# Quorum-based Algorithms
- Two key diffs
- Define a coterie
- What is a quorum
## Maekawa's algorithm
- 4 rules to construct the request sets
- Channel ordering needed
- Condition for execution
- When won't a site send a REPLY message?
- What happens when a site receives a RELEASE message?
- When will the `no_reply_since_release` will be set?
- Problems
- Solution to said problem
# Token-based Algorithms
- What is the main difference here
- Two main problems that needs to be tackled
- Data structures used
- Condition for execution 
- When does a process send an idle token
- What happens after execution of CS