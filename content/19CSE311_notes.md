---
title: 19CSE311 Notes
date: 2023-03-25
mathjax: true
---

# Euclidean Algorithm
- Euclidean Algorithm finds the *Greatest Common Divisor* of two integers
``` python
  def gcd(a, b):
      if a > b:
	    return gcd (b, a)
      else:
		if a % b == 0:
			return b
		else:
			return gcd(b, b%a)
```

* Modulus Operator
- if $(a\ mod\ n  = b\ mod\ n)\ then\ a \equiv b\ mod\ n$
