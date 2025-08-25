---
title: "Scala Overview"
date: 2023-07-02T12:51:53-04:00
---

- What is type of paradigm is scala?
	- Multi paradigm (Functional and Object oriented)
- What is the key difference in terms of types in java vs scala?
	- In Java there are two types
		- Primitive
		- Reference
	- In scala every type is an object
- Write "Hello, World" in scala
```scala
object Hello {
	def main(args: Array[String]) = {
		println("Hello, World")
	}
}
```
- What is the difference between  `val` and `var`?
	- `val` cannot be reassigned
	- `var` can be reassigned
- What is the equivalent of `val` in java?
	- `final`
- When is it compulsory to specify the return value of a function?
	- When it is recursive
- What is the return type of a function that doesn't return anything?
	- `Unit`
- How to access an element of an array?
	- Using parenthesis
	- `arr(5)`
- How to increment a variable in scala?
	- `i += 1`
- Do `++` operators work in scala?
	- No
- Which method is used to loop over an array?
	- `foreach`
- What is the function signature of `foreach`?
	- `foreach` takes a function as its arguement
- How to loop over an array using `for`
```scala
for (arg <- args) {
	println(arg)
}
``` 
- In the above case is `arg` a `val` or a `var`?
	- It is a `val`
	- It cannot be modified
- What is the syntax for using `match`
```scala
myVar match {
	case case1 => <statements>
	case _ => <default>
}
``` 
- Suppose you want to print a string with variable values inside them. They require no formatting. What to use?
	- use `s"String that needs substitution. $var"`
	- `$var` will be replaced by the value of `var`
- The same scenario but not it needs to be formatted
	- use f-strings
	- `f"The value of tmp is $tmp%.2f"`