---
title: sva_gen_lean implementation notes
date:  2026-04-04T14:56:32-04:00
tags:
mathjax: false
---


# References
- https://github.com/anishathalye/knox

- https://shd.mit.edu/2025/recitations/formal.html#the-big-picture

- [lean4](20260404T151735-lean4_notes.md)

# 2026-05-01



# TODO
- [ ] Read verilog files from stdin


# Log
- How do I read std args?
	- `main` takes an argument `args: String`
		- But this doesn't include the binary's name
		- How do I set up `progname` like I usually do?
	- Take it a file name as an arg or start reading from `stdin`
