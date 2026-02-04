---
title: HW1
date: 2026-02-03T15:41:24-05:00
tags:
mathjax: true
draft: true
---

# 1
Consider the set of all closed intervals in the real line with non-zero length:

$\cal{B} = \{[a, b]: a < b\}$

Is this a valid *basis* for a topology on $\mathbb{R}$? Why or why not?

---
- What is a topology?
A pair $(X, \cal{T})$ where $X$ is a set and $\cal{T}$ is also a collection that contains open sets of $X$
- What is a basis?
	Collection of subsets of $X$ such that
	1. $\forall x \in X, \exists B \in \cal{B}$ such that $x \in B$ \[Spans $X$\]
	2.  If $B_1, B_2 \in \mathcal{B}, x \in B_1 \cap B_{2}$ then $\exists B_3 \in \mathcal{B} \text{ s.t } B_3 \subset B_1 \cap B_2, x \in B_3$ \[For every element in the intersection of two basis elements there exists a even smaller basis element contained by the intersection containing that element\]

Let us check if $\cal{B} = \{[a, b]: a < b\}$ satisfies these conditions

<u>*Condition 1*</u>
-  For any $x \in \mathcal{R}$, we can define a $[x-\delta, x+\delta], \delta > 0$ such that $x \in [x-\delta, x+\delta]$
- $\forall x, x-\delta < x+\delta$, Hence $[x-\delta, x+\delta]\in \mathcal{B}$
- Hence this condition is satisfied

<u>*Condition 2*</u>
- Consider $B_1 = [-1, 0]$ and $B_2 = [0, 1]$
- It is clear that $B_1, B_2 \in \mathcal{B}$ 
- $B_1 \cap B_2 = \{0\}$
- By how $\mathcal{B}$ is defined, $\forall B \in \mathcal{B}, |B| \ge 2$ 
- $|B_1 \cap B_2| = 1$. No element of $\mathcal{B}$ can ever be a subset of $B_1 \cap B_2$
- Hence $\mathcal{B}$ is not a valid basis for any topology on $\mathcal{R}$
---
---
# 2
Let $Y$ be a subspace of a topological space $X$ with basis $\mathcal{B}$.

Show that the sets $\{B \cap Y : B \in \mathcal{B}\}$

form a basis for the subspace topology of $Y$.

---

- What is a basis?
	Collection of subsets of $X$ such that
	1. $\forall x \in X, \exists B \in \cal{B}$ such that $x \in B$ \[Spans $X$\]
	2.  If $B_1, B_2 \in \mathcal{B}, x \in B_1 \cap B_{2}$ then $\exists B_3 \in \mathcal{B} \text{ s.t } B_3 \subset B_1 \cap B_2, x \in B_3$ \[For every element in the intersection of two basis elements there exists a even smaller basis element contained by the intersection containing that element\]

<u>*Condition 1*</u>

To prove: $\forall\ y \in Y\ \exists\ B' \in \mathcal{B}'$ s.t. $y \in B'$

<u>Proof</u>

For any $y\in Y$, let us assume some $B'$ exists and figure out the necessary conditions for such a $B'$ to exists

For some $B'\in \mathcal{B}'$, if $y \in B' \implies y \in (B \cap Y)$ for some $B \in \mathcal{B}$ (This is by the definition of $B'$)


$y \in (B \cap Y) \implies (y \in B) \&\& (y \in Y)$

We know that $y \in Y$ is true trivially.

Is there a $B\in\mathcal{B}$ that contains $y$? 

Yes. This is because $\mathcal{B}$ is the basis of $X$ and $y \in X$ implies $\exists B \in \mathcal{B}$

Substituting this $B$ above we get $B'$ which is the intersection of a $B$ containing $y$ and $Y$

Hence this condition is satisfied

In layman's terms, $\forall\ y \in Y$ find out the basis element $B \in \mathcal{B}$ containing $y$ and takes its intersection with $Y$

<u>*Condition 2*</u>

To prove: $\forall B'_1, B'_2 \in \mathcal{B}'$ if $y \in B'_1 \cap B'_2$ then $\exists\ B'_3 \in \mathcal{B}'$ such that $y \in B'_3$ and $B'_3 \subset B'_1, B'_2$

Let $B'_1 = B_1 \cap Y$ and $B'_2 = B_2 \cap Y$ for some $B_1, B_2 \in \mathcal{B}$

If $y \in B'_1 \cap B'_2$

$\implies y \in (B_1 \cap Y) \cap  (B_2 \cap Y)$

$\implies y \in B_1 \cap Y \cap  B_2 \cap Y$

$\implies y \in B_1 \cap B_2 \cap Y$

$\implies y \in B_1 \cap B_2$

We know that $\exists B_3 \in \mathcal{B}$ such that $y \in B_3$ and $B_3 \subset B_1 \cap B_2$ as they are basis elements of $X$ and $y \in X$

If $B_3 \subset B_1 \cap B_2$ then


$\implies (B_3 \cap Y) \subset (B_1 \cap B_2 \cap Y)$

$\implies (B_3 \cap Y) \subset (B_1 \cap B_2 \cap Y \cap Y)$

$\implies (B_3 \cap Y) \subset (B_1 \cap Y) \cap ( B_2 \cap Y)$

$\implies (B_3 \cap Y) \subset (B'_1\cap  B'_2)$

Lets call this $B_3 \cap Y$ as $B'_3$

$y \in B'_3$ because $y \in B_3$ and $y \in Y$ 

$B'_3 \subset (B'_1 \cap B'_2)$

Hence condition 2 satisfied

For every element in the intersection of two basis elements we can find a smaller basis element that is the subset of the intersection which also contains said element.

In other words, for any two basis elements in $\mathcal{B}'$ find the corresponding elements in $\mathcal{B}$, take their intersection and find a subset containing $y$. This is guaranteed by the basis nature of $\mathcal{B}$. Then intersect that subset with $Y$ to get the corresponding subset in $\mathcal{B}'$

---
---
# 3

Given a metric space $X$ with metric
  $d : X \times X \rightarrow \mathbb{R}$ and a subset $A \subseteq X$, show
  that the metric restricted to $A$, $d |_{A \times A},$ gives the same topology
  as the subspace topology on $A$. **Hint:** you may want to use the result
  from the previous question.
---

A metric space is a set $X$ with a function called the *metric* $d: X \times X \rightarrow \mathbb{R}$ such that
- $d(x, y) \ge 0\ \forall\ x, y \in X$
- $d(x, y) = 0 \iff x = y$
- $d(x, y) = d(y, x)$ 
- $d(x , y) \le d(x, z) + d(z, y)$


Using this function we define the basis for a topology on $X$ as the set of all open balls

$B(x, r) = \{y \in X : d(x, y) < r\} \forall x\in X, \forall r\in \mathbb{R}$ 

$\mathcal{B} = \{B(x, r): x\in X, r\in \mathbb{R}\}$

<u>Subspace Topology</u>

Using the result from the last question

> Let $X$ be a topological space with basis $\mathcal{B}$. Then for any subset $Y$, $\mathcal{B}' = \{B \cap Y : B \in \mathcal{B}\}$ is a basis for the subspace topology

here $\mathcal{B}' = \{B \cap A: B \in \mathcal{B}\}$

<u>Metric restricted to A</u>

If we limit the metric $d$ to just elements from $A$, we get $d|_{A\times A}$.
Defining a topology on $A$ gives us the basis as the following

$B(x, r) = \{y \in A: d|_{A\times A}(x, y) < r\} \forall x\in A, r \in \mathbb{R}$ 

$\mathcal{B} = \{B(x, y): x \in A, r \in \mathbb{R}\}$


<u>Equivalence</u>

Let us names these bases as $\mathcal{B}_{sub}$ for subspace and $\mathcal{B}_{res}$ for the restricted metric.

$\mathcal{B}_{sub}  = \{B \cap A: B \in \mathcal{B}\}$


$\mathcal{B}_{sub}  = \{B(x, r) \cap A: x \in X, r \in \mathbb{R}\}$

$\mathcal{B}_{sub}  = \{ \{y \in X: d(x, y)< r\}\cap A: x \in X, r \in \mathbb{R}\}$

Since $A \subset X$ we can rewrite this as 

$\mathcal{B}_{sub}  = \{ \{y \in A: d(x, y)< r\}: x \in X, r \in \mathbb{R}\}$

Further we can divide this as

$\mathcal{B}_{sub}  = \{ \{y \in A: d(x, y)< r\}: x \in A, r \in \mathbb{R}\} \cup \{ \{y \in A: d(x, y)< r\}: x \in X-A, r \in \mathbb{R}\}$

We see that this is the same as $\mathcal{B}_{res}$. Intuitively imagine selecting all the open balls with their origin being in $A$, then dropping all points that are beyond the "boundaries" of $A$. This is the same as performing the restricted metric distance on all points of $A$, where after a certain $r$ the entire subset is covered.


$\mathcal{B}_{sub}  = \mathcal{B}_{res} \cup \{ \{y \in A: d(x, y)< r\}: x \in X-A, r \in \mathbb{R}\}$

To prove the equivalence of topologies we must prove that the union of all elements of the bases are the same

Clearly all the unions between $\mathcal{B}_{res}$ are trivially covered by $\mathcal{B}_{res}$

If the second part can be constructed as unions of $\mathcal{B}_{res}$ then we can represent $\mathcal{B}_{sub}$ entirely in terms of $\mathcal{B}_{res}$

Consider the following

For every element $y$ in $\{y \in A:d(x, y)< r\}$ where $x \in X-A, r \in \mathbb{R}$ we construct the following

$\bigcup_{y \in \{y \in A:d(x, y)< r\} } \{y' \in A: d|_{A\times A}(y, y') < r-d(x, y)\}$

We see that they are equivalent

1. Every $y$ in $\{y \in A:d(x, y)< r, x \in X - A, r \in \mathbb{R}\}$ is trivially included in  $\bigcup_{y \in \{y \in A:d(x, y)< r\} } \{y' \in A: d|_{A\times A}(y, y') < r-d(x, y)\}$ because we are iterating through them
2. No new elements are added. Every point $r - d(x, y)$ away from $y'$ is still $r$ away from the original $x$. 

---
Example visualization in $\mathbb{R}^2$

![](../assets/Pasted%20image%2020260203192442.png)

We see that most open balls outside $A$ are not of interest to us. All ball contained with $A$ are equivalent to the restricted metric counterparts. These are trivially provable. The tricky part is when the origin is outside $A$ but the ball still has intersection with $A$

![](../assets/Pasted%20image%2020260203192827.png)

Let us focus on just one corner to illustrate the proof

![](../assets/Pasted%20image%2020260203192904.png)


We see the green hatched ball of $X$. The proof states that we create open balls of radius $r - d(x, y)$ for every point in the set. Two of these are illustrated as red hatched regions. The region outside $A$ will be ignored. Essentially every point projects a line to the imaginary circle with radius $r$ and draw a open ball so that it is just inside that circle. This is crucial to avoid adding new points.