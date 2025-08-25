---
title: Haskell Pattern Matching
date: 2023-07-02T21:46:20-04:00
---

- What is pattern matching
	- Pattern Matching is process of matching specific type of expressions.
- What happens when we don't use an *exhaustive list of pattern*
	- Crash
- What are guards
	- Guards are a way of testing whether some property of a value (or several 
of them) are true or false
- Differentiate guards and pattern matching
	- Guards are used to return different values depending on different input
	- Pattern matching is used to determine which *function definition* to call
- How to implement a default case in guards
	- By using `otherwise`
- Can you define a function in an infix way, say like ``a `infixFunc` b``
	- Yes
- What is the use of `where`?
	- It is used when dealing with complex expressions
- `let` vs `where`
	- Both serve a similar purpose of local bindings
	- But the scope of `let` is much smaller. It is local to a single expression
	- `where` is local to the entire guard
	- `let` bindings are actually expression
	- `where` is syntactic sugar
- Use `let` to define a function
	- `[let square x = x * x in (square 5, square 3, square 2)] `
- Example for case expressions
	- `case expr of pattern -> result`
- Explain a peculiar use case of case expressions
	- They can be used anywhere. Even in the middle of expressions
	- `"The list is " ++ case xs of [] -> "empty.";[x] -> "a singleton list.";xs -> "a longer list"`