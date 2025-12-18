---
title: Jasper Gold Course
date: 2025-12-17T20:31:57-05:00
tags:
  - uva
  - assertion_gen
---

# Introduction to Formal Analysis
- Formal verification doesn't have any *delays*. All the cycles are absolute discrete units
- **Sequence** is a boolean expression evaluated over a number of cycles
- **Property** is a relation between boolean and sequential expressions.
- A property is not an assertion
- Assertion is a directive given to the Verification tool

```verilog
P0: assert property (@ posedge clk) A ##1 B ##1 C;
```
- We have several directives such as `assert`, `cover`, `assume`. These *tell* the tool what to do with the property. The property is a behavior of the design
	- `assert` checks if the property is true
	- `assume` tells the tool to only drive the inputs which satisfies the given property
	- `cover` asks the tool to find an example of inputs that satisfies the given property
- Here the property is the same. The directives are different. When we colloquially say *assertions*  we generally mean *properties*.
- Under the hood the verification tool view our design as a giant state machine
- The number of states will be $<< 2^{memory\ elements}$. As there will be lots of states that are not reachable. 
- The reachability of state depend on which initial state that we start from. Hence we have to tell Jasper what the initial state is
- *Diameter* is the number of steps required to cover all the states.
- Single cycle assertions are true if they are true in all states.
- There are three possible outcomes in formal 
	- Proven
	- CEX
	- Undetermined

# Module 03: Formal Friendly SVA Coding

- There is big difference between functionally correct SVA and efficient SVA
- It is very important that we write efficient SVA. This is because the main enemy of Formal is its exponential nature. So any chance to reduce the complexity is much appreciated.

- An example would be the following
```systemverilog
P0: assert property ((@ posedge CLK) (REQUEST |-> s_eventually GRANT));
```
This assertion seems very natural. If the `REQUEST` signal goes high, eventually the `GRANT` signal will go high.

Imagine a scenario where the `REQUEST` signal goes high and stays high for a really long time. The way formal works is that on every positive edge of `CLK`, it check whether this property is satisfied. Hence we will be creating unnecessary copies of the same assertion. 

- There is quite an easy fix for this
```systemverilog
P0: assert property ((@ posedge CLK) ($rose(REQUEST) |-> s_eventually GRANT));
```
The `$rose` detects the first time `REQUEST` goes high. It doesn't care if `REQUEST` stays high for a 1000 cycles. 

- Both of these assertions are functionally equivalent but the latter one is very efficient compared the former.

- Another example of Formal-friendly SVA is the following:
```verilog
p0: assert property ((@ posedge CLK) sig1 |-> sig2 ##5 sig3 ##9 sig4);
```
If this property fails it is very hard to debug where this failure occurred. An easy fix for this is to just decompose this into three separate properties

```verilog
p0: assert property ((@ posedge CLK) sig1 |-> sig2);
p0: assert property ((@ posedge CLK) sig2 |-> ##5 sig3);
p0: assert property ((@ posedge CLK) sig3 |-> ##9 sig4);
```

Now we can exactly pinpoint where the failure occurs and it is also easier on the formal engine to verify smaller properties.
- Always try to split complex properties into simpler ones.
- This has the added advantage of being parallelizable. Each property is tested in isolation by formal. 
- There are certain cases where it is not possible to write SVA
- These require *auxiliary verilog code*. An example would be anything involving a global counter. This is not possible in SVA but is trivial in verilog.
	- Every request should receive a grant in 2-8 cycles.
	```systemverilog
	p0: assert property ( (@ posedge clk) request |-> ##[2:8] grant);
	```
	This is what we would think will work. But this property holds even for accumulated grants. But our specification mentions that *every* request needs a grant. This requires a counter of some sort. But this is not possible in SVA
	- The solution for this is write some Verilog auxiliary code that does the counting co code. that does the counting and write assertions on those










