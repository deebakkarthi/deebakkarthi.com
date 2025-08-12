---
title: intermediate-representation
date: 2023-12-28T01:32:20-05:00
---

# Notes

## Triples
Here the `result` column is eliminated. The place to store the result is derived from the `position` of the instruction.
![Pasted image 20231106095243](../assets/Pasted%20image%2020231106095243.png)


The main issue with this is that it is inflexible to rearrangement. For the sake of optimization, compiler usually switch the order in which instructions are executed. Since we are referring to the positions in the table, when we move an instruction all of its backlinks have to changed as well

## Indirect triples
Instead of referring to instructions by their place in the triple table, we instead refer to them by a *pointer*.
To facilitate this we need a separate array which holds the mapping from `position -> instructions`


# Questions
> [!question]- What are some IR properties
> – Ease of generation
> - Ease of manipulation
> – Procedure size
> – Freedom of expression
> – Level of abstraction

> [!question]- Explain the difference in the levels of abstraction using array reference as an example
> ![Pasted image 20231228113155](../assets/Pasted%20image%2020231228113155.png)
> This is an AST.
> ![Pasted image 20231228113210](../assets/Pasted%20image%2020231228113210.png)
> This is three address code

> [!question]- What are high level abstraction good for?
> Memory Disambiguation

> [!question]- What are low level abstractions good for?
> Address Calculation

> [!question]- What are the types of IR
> - Structural
> - Linear
> - Hybrid

> [!question]- What is source to source translation?
> Transpiling
> Converting between languages of similar levels of abstraction

> [!question]- Which sort of IR is used in source to source translator?
> Structural

> [!question]- What is the usual hierarchy, in terms of abstraction, of the different types of IR?
> Structural > Linear

> [!question]- Is this hierarchy always true? If not give an example
> No
> ![Pasted image 20231228114827](../assets/Pasted%20image%2020231228114827.png)
> `loadArray A,i,j` is a high-level linear IR

> [!question]- What is the difference between AST and DAG?
> Unique node for each value

> [!question]- Convert `x-2*y` to Stack Machine Code
> ```ASM
> push x
> push 2
> push y
> mult
> sub
>```

> [!question]- What is the other name for Stack Machine Code
> Single address code

> [!question]- What are the instructions available in 3 address code
> - Assignment
> 	- `a = b biop c` where `biop` is any binary operation
> 	- `a = uop b`
> 	- `a = b`
> - Control Flow
> 	- `goto L`
> 	- `if t goto L` where t is a boolean
> 	- `if (a relop b) goto L` where `relop` is a relational operator
> - Function
> 	- `func begin <name>`
> 	- `func end`
> 	- `param p`
> 	- `refparam p`
> 	- `return`
> 	- `return <value>`
> 	- `call f, n`
> - Array
> 	- `a = b[i]`
> 	- `b[i] = a`
> - Pointers
> 	- `a = &b`
> 	- `*a = b`
> 	- `a = *b`

> [!question]- What is the format of a quadruples
> 

> [!question]- What is the table size of Quadruples

> [!question]- Advantages and disadvantages of quadruples

> [!question]- Explain how triples work?

> [!question]- How to represent an assignment to a variable in triples

> [!question]- What are the disadvantages of triples

> [!question]- What is the form of statement used in 2 address code

> [!question]- What is SSA

> [!question]- Convert the following to SSA
>```c
> x = 0
> y = 1
> while (x < k)
> x = x + 1
> y = y + x
>```

> [!question]- What do the nodes and edges in a Control Flow Graph represent?

> [!question]- What is a basic block

> [!question]- How to identify leaders?