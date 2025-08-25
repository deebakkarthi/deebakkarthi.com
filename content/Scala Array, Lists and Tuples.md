---
title: Scala Array, Lists and Tuples
date: 2023-07-02T13:41:38-04:00
---

# Array
- We know that we can parameterize a class instantiation. Suppose that instantiation takes a type. What is the syntax for this?
	- We use square brackets
	- Example: `var arr =  new Array[Int](5)`
	- Here we have 2 parameters
		- Type of Int
		- Size of 5
	- Size is parameterized the normal way using parenthesis
- What is the type of this variable `var x = new Array[Int](420)`
	- `Array[Int]`
- Do the size of an array contribute to its type?
	- No
	- Suppose we have a `typeof` function in scala
	- Then `typeof(new Array[String](10)) == typeof(new Array[String](25))` 
 
- How to use the `to` method?
	- `for(i <- 1 to 10)`
- Explain how `to` is actually a method?
	- `for(i <- 1 to 10)` is expanded to `for (i <- (1).to(10))`
- Why is operator overloading not supported in scala?
	- Scala doesn't have any operators
	- Operators are actually functions
	- `3 + 2` is actually `(3).+(2)`
	- Here `(3)` is an object literal of the class `Int`
	- `+` is a method
	- `2` is passed as an argument
- Under the hood how are array accesses done?
	- Arrays are a class just like *every other thing in scala*
	- `arr(5)` is actually `arr.apply(5)`
 
```scala
val arr = new Array[Int](5)
arr(0) = 69
```
- Consider the above code snippet.Will this produce an error? Explain how the second line is interpreted under the hood
	- No
	- Even though `arr` is declared as a `val` when we are assigning `arr(0)` to 69 we are *not actually reassigning `arr`*
	- `arr =  new Array[Int](69)` will cause an error as we are reassigning `arr`
	- `arr(0) = 69` is actually `arr.update(0, 69)`. So we are just calling a method.
- Initialize an array using *factory* methods
	- `var x = Array("Hello", "to", "you")`
# List
- How to create a new list
	- `var x = List(1, 2, 3)`
- How to concatenate two lists?
	- Using the `:::` method
- How to insert an element in the front of a list
	- `::`. Cons operator
- Empty list is represented as ?
	- `Nil`
- Suppose I have a list `list` and I want to count the number of element that pass a certain predicate `p`. How do I do this?
	- `list.count(p)`
- How to get the last `n` elements of a list?
	- `list.drop(n)`
- How to get the first `n` elements of a list?
	- `list.dropRight(n)`
- How to search a list for an element?
	- `list.exists(s => s == "s")`
- Get the elements that pass a certain predicate?
	- `list.filter(even)`
- Get all the elements except the last
	- `list.init`
- Convert a list to string
	- `list.mkString(sep)`
- How will you sort a list in alphabetical order based on the first letter
	- `list.sort((s, t) => s.charAt(0).toLower < t.charAt(0).toLower)`
- Create a list of 10 9s
	- `List.fill(10)(2)`
- Compute the sum of a list using `foreach`
	- `var sum = 0`
	- `list.foreach(sum += _)`
- In the context of a `Char`, is `toLower` a property or a method
	- Property
- Are lists mutable?
	- No
- How to get a mutated version of a list?
	- Using the `updated()` method
 
# Tuple
- What is the principal difference between lists and tuples?
	- Tuples can contain multiple types
- How to create a new tuple?
	- `(1, 2, "Hello")`
- Access the $n^{th}$ member of a tuple
	- `tuple._n`
- What sort of indexing do tuples follow?
	- one-based index
- Imagine there is a function `typeof`. `typeof((1, 2)) == typeof((1, 2, 3))`
	- No
	- In tuples the number of elements is also included in the type
- Why can't we use the `apply` method used to access elements in a list/array for a tuple?
	- `apply` methods always returns a value of the same type
	- That is not the case with tuples. So we need a new method
- How do you iterate a tuple
	- `tuple.productIterator.foreach(f)`