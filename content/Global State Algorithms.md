---
title: Global State Algorithms
date: 2023-06-23T19:19:43-04:00
---

# Global state
- Two Conditions for consistency
- Two issues faced
# FIFO Algorithms
## Chandy-Lamport Algorithm
- Special message used here
- What is the marker sending rule
- What is the maker receiving rule
# Non-FIFO Algorithms
## Lai-Yang's Algorithm
- Two roles of makers in FIFO systems
- When does a process turn red
- When should a process take a snapshot(not the initiator)
- How is the channel state calculated
# Causal Delivery Channels
- Why is that only handling the channel state enough for causal systems?
## Acharya-Badrinath
- Data structures used
- Do these structures add to the complexity
- How do you calculate the channel state
## Alagar-Venkatesan
- When can a message be called as _old_ and _new_
- In addition to the _token_ message that is standard in all algorithms, what is used extra here
- Who does the channel state computation