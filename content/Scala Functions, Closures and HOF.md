---
title: Scala Functions, Closures and HOF
date: 2023-07-02T14:22:04-04:00
---

- What are first class functions
	- Defining functions as unnamed literals and then passing them around as  values 
- A function literal at runtime becomes
	- Function value
- When do function values exist?
	- At runtime
- rewrite the following literal, `x => x * 56` using placeholder syntax
	- `_ * 56`
- When can't we use the placeholder syntax
	- There will be ambiguity when the variable appears twice in the expression
- Fix `var f = _ + _`
	- `var f = (_:Int) + (_:Int)`
- What is a closure?
	- function together with a referencing environment for the non-local variables of that function. A closure allows a function to access variables outside its immediate lexical scope
- What is currying
	- The process of transforming a function that takes multiple arguments into one that takes one argument
- In what order does `flatMap` work?
	- It works in the reverse order actually
	- First it maps then flattens
- What does `reduceLeft` and `reduceRight` do
	- Apply a binary operator between all the elements
- How does `fold` and `scan` extend `reduce`
	- `fold` allows for an initial value
	- `scan` is fold + printing of the intermediate results