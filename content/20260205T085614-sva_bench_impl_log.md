---
title: svabench
date:  2026-02-05T08:56:14-05:00
tags:
mathjax: false
---
# 2026-02-27
- Start with individual module and verify them individually
	- This is because the clock domains may be different
- Figure out a way to efficiently convey the design to Claude
	- Using a graph or something to represent the hierarchy
	- Xilinx to generate block diagram
- `reset` way causing the issue. Any properties with `reset` cannot be verified in a reset restricted environment
- `reset` is some signal assume to be `false` after the initial clock cycler and stays that way forever.
	
# 2026-02-26
- Haiku
	- Claude forgot its output instruction when the instructions are used as a regular prompt in conjunction with the default system prompt
	- Haiku makes a lot of syntax errors
	- It forgot `endmodule`
	- Why this much variability?
	- Teach it how to do hierarchical access

# 2026-02-19
- Identifying the top module
- Dealing with non-determinism
- Print back the source code

# 2026-02-18
- Work on the parser
	- Parser shouldn't do preprocessing

# 2026-02-17
- [ ] Run some benchmark
	- [ ] Compare claude in the web vs claude code when using the same model
	- [ ] What is CLAUDE.md
	- [ ] Claude seems slow? 

# 2026-02-13
- 

# 2026-02-10
- Take in `*.f` file as input

# 2026-02-09
- What is the best way to structure the assertions?
https://github.com/klyone/opencores-ip?tab=readme-ov-file


# 2026-02-05
- `gen_command_file.sh`
	- Go through `bench/DIR/rtl` files and add then to a file called `DIR.f`
