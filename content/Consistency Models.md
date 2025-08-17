---
title: Consistency Models
date: 2023-09-06T01:50:40-04:00
---

# Introduction
- _Why do we need replication?_
	- Redundancy
	- Performance
- _What are the two ways in which replication achieves performance improvement?_
	- Let there be $N$ requests to a server. The time taken to serve $N$ requests be $t$. Suppose we have two servers to serve instead of one. Now the time taken to serve $N$ requests becomes $\frac{t}{2}$.
	- Let the access time be $t$ and the distance between the server and client be $d$.  Here $f(d)=t$. If $d$ decreases then $t$ also decreases thus giving the illusion of a performance gain to the end-user.
- _Why is replication hard?_
	- Even though it may seem like replication is a silver bullet to solve all the performance issues there are many issues in implementing replication.
	- The overhead to keep the replicas consistent is often too much
	- One of the problems is _synchronization of when to update_. Since we don't a global clock in a distributed context, we need to establish something like a _Lamport's clock_ to coordinate the updates
- _Give an example scenario where replication is basically useless?_
	- Suppose we have a process $P$ that write data at a rate of $M$.
	- This data is read by the client at a rate $N$
	- When $N << M$, then most of the updates written will never be read by P
	- The cost to keep the data consistent will be more than the cost incurred if the client had accessed $P$ directly
- _What is strong consistency?_
	- A system is said to be strongly consistent if each primitive operation can be thought of a single atomic operation performed on all the replicas at the same time
- _Is strong consistency viable in a distributed context?_
	- No. As the number of replicas increases the time and computation required to make every operation atomic is not feasible
	- Even assuming at every update is sent without fail, the delay involved when dealing with replicas that are geographically distant will block the system from processing further operations
- _What is the solution for consistency if strong consistency is improbable in the distributed context?_
	- The only way to efficiently implement replication is to _relax the consistency constraint_ i.e the copies may not be the same at all times
 
# Data-centric Consistency Models
- _What are Data Stores?_
	- Usually consistency is discussed in the context of the following
		- Shared memory
		- Shared database
		- Shared file system
	- These can be generalized as __Data stores__
- _What are Consistency models ?_
	- Contract between  processes and data stores
	- If process obey certain rules then the stores will give the promised data
- _What are some data-centric consistency models?_
	- Continuous consistency
		- Numerical deviation
		- Staleness of updates
		- Deviation in ordering
	- Sequential consistency
	- Causal consistency
	- Eventual consistency
## Continuous Consistency
- _We know that the only way to efficiently implement replication is by loosening up the constraints of consistency. But how do we determine what to loosen?_ 
	- There are three general axes in which the constraints of consistency can be relaxed. They are
		1. Numerical deviation
		2. Deviation in staleness
		3. Deviation in the ordering of the update operations
	- _What is numerical deviation_
		- This is used when the data has numerical values. The deviation can be specified either in terms of an _absolute value_ or a _relative percentage_. Either way if a replica receives an update that stays within that boundary, it is not propagated to the other replicas. Even though they are different, since they are within that threshold, the system is said to be consistent
	- _What is deviation in staleness_
		- This relates to the _last time a replica was updated_. Some applications such as weather stations can tolerate inconsistency given that the data is not _too old_.
	-  _What is Deviation in the order of updates?_
		- Here the order of updates don't matter as long as the resultant remains bounded to the set difference value.
		- This is implemented by a tentative update scheme. Where each update has to have a global agreement to apply. Sometimes the update has to be rolled back and applied in a different order
- _What is a Conit?_
	- Conit stands for *consistency unit*. It is a unit of data over which consistency is measured
## Sequential consistency
- _What is Sequential consistency?_
	- The result of any execution is the same as if the read and write operations by all processes on the data store were executed in some sequential order and the operations of each individual process appear in this sequence in the order specified by its program. To put it in layman's terms _interleaving of operations is allowed_ as long as _all the processes see the same interleaving_
- Give an example showing two scenarios where one is consistent and the other is not
	- ![4 Archive/2023-08-03_archive/Pasted image 20230612073200.png](4%20Archive/2023-08-03_archive/Pasted%20image%2020230612073200.png)
	- See the example above. In the first figure even though P1 writes first in absolute time it's effects are only propagated after $W_2(x)b$. But this is the way both $P_3$ and $P_4$ see it. This is _sequentially consistent_
	- Contrast that with the second picture. $P_3$ sees the write by $P_2$ first and then sees the write by $P_1$. This would have been valid given that $P_4$ too sees it that way. But that is not the case. The order is reversed in the case of $P_4$. This is not sequentially consistent.
 - _Does sequential consistency mention anything about time?_
	 - No
  - _Suppose there are two events A and B. A occurs before B in absolute time. The other processes sees B first then A. All of them see it this way. Is the mentioned scenario __Sequentially__ consistent?_
	  - Yes
	  - Any interleaving of events is valid as long as all of the processes see it the same
## Causal Consistency
- *What is causal consistency?*
	- Writes that are potentially causally related must be seen by all processes in the same order. Concurrent writes may be seen in a different order on different machines
- *Give an example contrasting causal and sequential consistency*
	- ![Pasted image 20230612074002](../assets/Pasted%20image%2020230612074002.png)
	- Consider the above example. We assume that $W(x)b$ and $W(x)c$ are not causally dependent. Hence the order in which these two operations occur can be different in different systems.
	- Here $P_3$ has the order $P_1 \rightarrow P_2$. But $P_4$ has the order $P_2 \rightarrow P_1$. This would be an illegal sequential consistency. But this is perfectly legal in the case of causal consistency
- *Which is more strict - causal or sequential?*
	- Sequential
- *How to increase the granularity of operations*
	- All the above model are synchronized at the level of atomic read and writes. But this can be expanded by introducing the concept of `ENTER_CS` and `LEAVE_CS` by which a group of operations can be thought of a single atomic event. This increases the granularity of the model.
- *When can a lock be acquired?*
	- If it is an exclusive lock then no other process should have any kind of lock
	- If it is an non-exclusive lock then no other process should have an exclusive lock on it
	- All the updates to the underlying data should have been complete
 - *What is entry consistency?*
	 - Sequential consistency with locks
  - _Differentiate consistency vs coherence_
	  - Consistency deals with a set of items
	  - Coherence deals with a __single item__
## Eventual Consistency
- _What is eventual consistency ?_
	- Informally speaking if no new updates are made to a data item then all accesses to said data item will return last updated value eventually.
 - _What makes this very permissive form of consistency possible?_
	- Most often in the context of distributed system, there are very little if not no _write-write_ conflicts. The writing is often done by a central authority and most sites just perform read operations. In this case the updates may propagate slowly assuming that they will eventually propagate. Examples for these are DNS and the Web
# Client-centric  Consistency Models
- _What are client-centric consistency models ?_
	- They are a weak class of consistency model that deal with consistency from the perspective of a single client
- _How to denote a version of a data item $x$_?
	- $x_i$
- _What is a write set and how to denote it ?_
	- Write set of a version data item $x_i$ is denoted by $WS(x_i)$. It includes all the writes that led up to that version
- _How do you represent the connection between two version of a data item_
	- $WS(x_i;x_j)$ indicates that $x_j$ follows from $x_i$.
	- $WS(x_i|x_j)$ indicates unknown relation
- _What are the different models under client-centric consistency_?
	- Monotonic reads
	- Read your Writes
	- Write follows Read
	- Monotonic writes
	- _What is Monotonic reads ?_
		- If a process reads the value of data item x, then any subsequent reads on that data item will produce the same value or an updated value
		- Give an example
			- Reading emails
	- _What is Monotonic writes ?_
		- A write operation on data item x is completed before any subsequent write operations are performed
		- Identify the Monotonic write consistent scenarios from below ![Pasted image 20230623171238](../assets/Pasted%20image%2020230623171238.png)
			- Consistent
			- Inconsistent
			- Inconsistent
			- Consistent
	- _What is Read your Writes ?_
		- The effect of a write operation by a process is always seen by a successive read operation by the same process
		- A write operation is always completed before a read takes place
	  - Is this consistent?
	   ![Pasted image 20230623171905](../assets/Pasted%20image%2020230623171905.png)
		  - No. $W_1(x)$ is not being read
	  - Give an example
		  - Password updating
		  - Online document
	- _What is Write follows Read ?_
		- A write operation by a process on a data item x following a previous read operation on x by the same process is guaranteed to take place on the same or a more recent value of x that was read.
		- Give an example
			- Can only comment if the article is available locally
> Notice that the $W$ are sub-scripted with a number. This indicates the process number. Every single rule given here pertains to the same process. Always check the process numbers when validating the condition