---
title: SVABENCH TEST DESIGNS IMPLEMENTATION MAP OF CONTENTS
date:  2026-07-06T13:46:22-04:00
tags:
mathjax: false
---
# 2026-07-06T02:40:25
- Starting implementing `svabench_test_designs`
- Decided on just using *Opencores Certified Designs*
	- This implies that the designs were vetted by humans
- This gives me 17 designs
	- Is this too small? I don't think so. It covers a lot of different design paradigms.
- What are my goals with this project?
	- Clean `rtl` project structure
	- A script to run claude and generate the assertions
	- A script to calculate the score
- Let me just stick with claude for now. I can calculate the number of tokens by using tiktokenizer or something
- Agentic is the way to go. I want to leave it to the tool to decide which files to read
- Mini-benchmarks?
	- Extract out modules from the test files and ask the model to just generate local assertions?
- Categories?
	- arith
	- comm
	- crypto
	- ecc
	- mem
	- proc
	- soc
	- vid