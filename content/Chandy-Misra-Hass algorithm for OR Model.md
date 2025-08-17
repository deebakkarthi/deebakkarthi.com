---
title: Chandy-Misra-Hass algorithm for OR Model
date: 2023-09-06T01:50:40-04:00
---

- _Classify this based on the [Distributed Deadlock Detection](Distributed%20Deadlock%20Detection.md)_
	- Diffusion computation
- _What are the types of messages involved here ?_
	- `query(i, j, k)`
	- `reply(i, j, k)`
- _Explain the triplet_
	- $P_i$ initiated it
	- $P_j$ sent it
	- $P_k$ received it
- _What are the data structures being used ?_
	- $wait_i(j)$
	- $num_i(k)$
	- $DS_i$
- Give the algorithm
	- Initiator
		- $num_i(i) := |DS_i|$
		- Send `query(i, i, k)` for $\forall{} P_k \in DS_i$
		- $wait_i(i) := true$
	- Receiver
		- `query(i, j, k)`
			- if $wait_k(i)$ then `reply(i, k, j)`
			- else for all $P_m \in DS_k$  send `query(i, k, m)`
			- $num_k(i) = |DS_k|$
			- $wait_k(i) = true$
		- `reply(i, j, k)`
			- if $wait_k(i)$ then
				- $num_k(i)--$
				- if $num_k(i) = 0$
					- if $k == i$ then deadlock else
					- Send reply to process that sent the engaging query
- _What is the complexity in terms of messages exchanged?_
	- $e$  query messages and $e$ reply messages
	- $e = n(n-1)$ where n is the number of edges
```java
class Message{
	int initiator;
	int sender;
	int receiver;
}
class Query extends Message;
class Reply extends Message;

class Process{
	boolean[] wait;
	int[] num;
	int[] engager;
	int[] ds;
	int id;
	public void initiate(){
		wait[id] = true;
		num[id] = ds.length();
		engager[id] = id;
	}
	public void onQuery(Query q){
		if(wait[q.initiator] == true){
			reply(q.initiator, id, q.sender);
		} else {
			wait[q.initiator] = true;
			num[q.initiator] = ds.length();
			for(int i = 0; i < ds.length; i++){
				query(q.initiator, id, i);
			}
		}
	}
	public void onReply(Reply r){
		if (wait[r.initiator] == true){
			num[r.initiator]--;
			if(num[r.initiator] == 0){
				if(r.initiator == id)
					decalareDeadlock()
				else
					reply(r.initiator, id, engager[r.initiator])
			}
		}
	}
}
```