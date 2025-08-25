---
title: Haskell Recursion
date: 2023-07-02T21:50:46-04:00
---

- Why is recursion so important in haskell
	- The absence of `for` and `while` loops makes recursion important
- Implement quickSort
```haskell
quickSort [] = []
quickSort x:xs = left ++ [x] ++ right where
	left = quicksort [y | y <- xs, y <= x]
	right = quicksort [y | y <- xs, y > x]
```