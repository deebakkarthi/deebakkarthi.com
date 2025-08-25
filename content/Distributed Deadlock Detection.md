---
title: Distributed Deadlock Detection
date: 2023-09-06T01:50:40-04:00
---

# Introduction
- _What are the two main issues in detecting deadlocks ?_
	 1. Maintaining WFG
	 2. Searching WFG
- _How to resolve a deadlock ?_
	To resolve a deadlock we have to break the cycle in the WFG. This involves rolling back one or more processes and allocation resources to correct the allocation. This change should be immediately passed on to all the sites so that phantom deadlocks are not reported
- _What are the correctness criteria of a deadlock detection algorithm?_
	- Progress
		- Detect all deadlocks in finite time
		- Detect a deadlock the instant it is formed i.e it should report the instant a cycle is formed in the WFG. It should not wait for more processes to be added to the cycle
	- Safety
		- No _phantom or false deadlocks_
		- The absence of a global state and a global clock means that sites often receive wrong and out-of-date information about the system. This leads to phantom deadlocks being reported
# Deadlock Models
## AND Model
- _What is the AND model_?
	- Each request may ask for more that one resource.
	- The request is complete only when **all** of the resources asked have been allocated.
- _What is the sign that a process is in a deadlock? Can it be in a deadlock without exhibiting this sign? Give an example_
	- The presence of a cycle in the WFG indicates a deadlock but the *vice versa is not true* i.e there may be a deadlocked process without it being in the cycle
	- Here $P_{44}$ is deadlocked even though it is not part of a cycle
	- ![Pasted image 20230611180746](../assets/Pasted%20image%2020230611180746.png)
- This can be detected using the [Chandy-Misra-Hass algorithm for AND model](Chandy-Misra-Hass%20algorithm%20for%20AND%20model.md)
## OR Model
- _What is the OR model_
	- Each request may ask for more that one resource.
	- The request is complete if **any** of the resources asked has been allocated.
- _Can a deadlock be detected using a cycle ?_
	- The presence of a cycle in the WFG **doesn't** indicate a deadlock.
- _What is an indicator of deadlock? Can a process be deadlocked without exhibiting this sign_
	- The presence of a [Knot](Knot.md) in the WFG indicates a deadlock.
	- If a process is not in a knot it doesn't mean that it can't be deadlocked.
	- So a process is said to be deadlocked if it is in a knot or can only reach processes in a knot
- _Formally define deadlock using dependent sets_
	- Formally a set of processes $S$ are said to be deadlocked if all of the processes of $S$ are blocked , the dependent set of all the process in $S$ are subsets of $S$ and there are no grant message in transit.
-  This can be detected using the [Chandy-Misra-Hass algorithm for OR Model](Chandy-Misra-Hass%20algorithm%20for%20OR%20Model.md)
# Knapp's Classification
- _What are the types of deadlock algorithms ?_
	According to Knapp there are 4 types of deadlock detection algorithms
	1. Path-pushing
	2. Edge-chasing
	3. Diffusion computation
	4. Global state
## Path Pushing
In this method each site sends it local WFG to all its neighbors. A global WFG is being built on all the sites. When a site has sufficient information, it runs the detection algorithm as states if there is a deadlock or not
## Edge Chasing
- _What is edge chasing?_
In this method each site sends a special message known as the *probe* message. If a process is running then it discards this probe message. If it is blocked then the process sends out probe messages along its outgoing edges. If the original instigator receives a probe message then there is a deadlock in the system.
- _What is the main advantage of edge-chasing?_
	-  The main advantage of this system is that the message size is constant and small.
## Diffusion computation
In this method deadlock detection is done as part of the WFG construction. But the actual WFG is never constructed. This is accomplished through echo algorithms. The initiator sends query messages along all of its outgoing WFG edges and the receiving process does the same. When a process receives such query message if it is running it discards it, if not it sends back a reply  only after receiving a reply for all the queries it had sent. Deadlock is detected if the initiator receives a reply for all queries it had sent
## Global state
Global state can be used to detect deadlock. In the context of distributed systems two key things are in favor of this method:
1. Global state can be built without freezing the underlying computation
2. Even though the global state may not be the state of the system at any *physical* point of time, if the system was stable before initiation then that will hold in the snapshot

