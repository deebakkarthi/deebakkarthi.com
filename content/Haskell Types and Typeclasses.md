---
title: Haskell Types and Typeclasses
date: 2023-07-02T21:19:57-04:00
---

- Difference between `Int` and `Integer`
	- `Integer` is not bounded
- What is a type class
	- Type class specifies a set of methods that when implement for a type would make it eligible to belong to that type class
- What is the class constraint?
	- Everything before the `=>` is called as the class constraint
	- Example:  `(==) :: Eq a => a -> a -> Bool`
- What is the input and output type of `compare`
	- Input is of the type class `Ord`
	- Output is of the type `Ordering`
- What is the `Show` typeclass
	- Members of this type class can be printed to the screen
- What are enums?
	- Sequentially ordered types
- Main advantage of enums?
	- They can be *enumerated*
	- `succ` and `pred` can be used to retrieve the surrounding elements
- What is the `Integral` type class
	- `Int` and `Integer`
- What is the `Floating` type class
	- `Float` and `Double`
- How to convert from integral types to float?
	- `fromIntegral`