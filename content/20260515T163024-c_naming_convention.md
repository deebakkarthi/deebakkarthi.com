---
title: C Naming Convention
date: 2026-05-15T16:30:24-04:00
tags:
mathjax: false
---

| Symbol    | Scheme            |
| --------- | ----------------- |
| variable  | snake_case        |
| function  | snake_case        |
| constants | SNAKE_CASE        |
| structs   | snake_case_struct |
| enums     | snake_case_enum   | 

- Don't use typedefs unless you want them to be intentionally opaque
	- The supposed rationale of this is that when you encounter some type `type_t *a` you have no clue about that the heck `a` is
	- It make the code obscure. It doesn't improve visibility.
	- Though it may seem verbose, use `void foo(struct foo_struct *bar)`
	- This is stolen from the kernel docs
	- Also `_t` is reserved by POSIX

# Naming functions

- Name function using the pattern `object_verb()` instead of `verb_object()`
- This allows for very easy grepping
- If you start typing in `object_` you can see all the things you can do with that object
- example would be `vector_add` `vector_sub` etc...
- Instead of `add_vector()` you cannot easily autocomplete stuff
