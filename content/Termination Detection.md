---
title: Termination Detection
date: 2023-06-23T05:32:41-04:00
---

## Introduction
- _Why should we care about termination detection?_
	- Usually in a distributed context many subproblems can only start after other subproblems are completed.
	- Therefore it is essential that the termination is detected.
- _Is termination detection in a distributed context trivial? If not justify._
	- It is __not trivial__
	- No system in a distributed context has __complete knowledge of the other systems__
	- There is __no global clock__
	- These factors make termination detection non-trivial
- _Define global termination_
	- All the processes in the system are __terminated locally__.
	- No messages are in transit.
- _Define local termination_
	- Completed the __underlying local computation__.
	- Won't start any actions unless __a message is received__.
- _How many computations are running during a termination detection algorithm_
	- 2. The base computation and the computation to determine termination
	- _What are the type of messages_
		- Basic
		- Control
- _What should be ensured by a TD algorithm ?_
	- Should not freeze the underlying computation indefinitely.
	- Shouldn't add any __new communication channels__.
## System Model of a Distributed Computation
- _List the characteristics of a distributed computation_
	1. A process can be in only one of two states
		1. __Active/busy__
		2. __Idle/passive__
	2. An active process can become idle at any time. This indicates that the process has finished its local computation and processed all its messages
	3. An idle process can only become active on __receiving a message__.
	4. Only active processes can send messages
	5. A process can receive a message in both states
	6. Send and receive are __atomic__ operations
	- _What is the assumption here?_
		- All processes are initially idle and are put into active state by an external message
	- _Elaborate the reasoning behind the assumption **All processes are initially idle and are put into active state by an external message**?_
		- It is known that only active processes can send messages. In the beginning all the processes are idle. So no messages are being sent. Thus an external message is needed to kick off the computation
		- By assuming the above, the rule __"idle processes only become active on receiving a message"__ can be enforced
- _Mathematically define the termination condition_
	- $(\forall i::p_i(t_0) = idle) \land(\forall i \forall j::c_{i,j}(t_0)=0)$
## Termination Detection Using Distributed Snapshots
- _Why will this algorithm work?_
- _Mention the one key idea behind this algorithm_?
	- For every computation there exists a unique process that became idle last
- _Informally describe the algorithm in one sentence_
	- When a process goes from active to idle, it requests everyone to take a snapshot
	- When a request is received, the process checks whether the requester became idle later than itself. If that was the case then a snapshot is taken
- _Formally define the algorithm_
	1. A process can send a basic message to another process via $B(x)$ 
	2. When a process receives a basic messages it does the following
		1. $x := x + 1$
		2. $if\ idle\ then\ become\ active$
	3. When a process goes from active to idle it,
		1. $x := x + 1$
		2. $k := i$
		3. Send out $R(x, k)$ to all other processes
	4. When a process receives a $R(x', k')$ it follows the following
		1. if $(x', k') > (x, k) \land is\_idle()$  then take a local snapshot and $(x, k) := (x', k')$
		2. if $(x', k') \le (x, k) \land is\_idle()$ then do nothing
		3. if $not\ is\_idle()$ then $x :=  max(x, x')$
	  - Here think of $x$ as __global clock value__ and $k$ as the process that this process thinks became idle the last
## Spanning-tree-based Termination Detection Algorithm
- _What is a token ?_
	- This is the signal sent by the leaf nodes to it parent. 
- _What is a repeat signal ?_
	- If  the termination is not detected by the root then it send out a __repeat signal__ to its children to restart the process
- _When does a node considered to be in $S$_
	- If it has __one or more tokens__
- _When does a node considered to be outside of $S$_
	- Idle processes
	- More specifically if a process doesn't have a token and a node in the path from the root to itself is in $S$
- _Give the simple algorithm_
	- All the leaf nodes are given with a token
	- If a leaf node becomes idle it sends its token to its parent
	- For all the inodes, when they become idle and have received a token from each of their children, they send a token to their parent
	- Program is terminated when the root node is idle and has received a token from all of its children
- _What is the problem with the simple algorithm_
	- The problem occurs when a message is sent to a node that is idle. This means that the nodes should become active again thus making the token it had sent void.
- _How to fix this using a simple concept?_
	- This can be fixed by using a coloring scheme
	- A process becomes black if it sends a message
	- A black process sends black tokens
	- A process who has at least one black token has to also send a black token
	- A process becomes white when it sends a black token to its parent
- _Give all the steps of this algorithm_
	- _Who is initially in the set $S$ ?_
		- All the leaf nodes as they are given a token
	- _When does a __process__ become black ?_
		- When it sends a message
	- _When does can a process become **white** ?_
		- When it sends a black token to its parent
	- _What is the condition for termination ?_
		- Root is idle
		- Root is white
		- Root received white tokens from its children
 - _What is the complexity of this algorithm?_
	 - $\Omega(N)$ - Only one pass. No messages sent
	 - $\mathcal{O}(N\times{}M)$ - $M$ is the number of messages sent