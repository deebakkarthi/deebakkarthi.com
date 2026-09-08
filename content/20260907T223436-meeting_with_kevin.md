---
title: Meeting with Kevin
date:  2026-09-07T22:34:36-04:00
tags:
mathjax: false
---

# Ran fable
- [20260904T070243-fable_perf](20260904T070243-fable_perf.md)
- `sha3` still doesn't compile
- `sockit` had 2 real CEX because Claude thought `owr_sel` will always be 0 but it was set by an input signal

# Cadence AI agent
- Homepage: https://www.cadence.com/en_US/home/tools/system-design-and-verification/chipstack-ai-superagent.html
- PR: https://www.cadence.com/en_US/home/company/newsroom/press-releases/pr/2026/cadence-unleashes-chipstack-ai-super-agent-pioneering-a-new.html
- White paper: https://www.cadence.com/content/dam/cadence-www/global/en_US/documents/tools/system-design-verification/cadence-chip-verificationt-next-level-ai-agents.pdf
- They seem to have bought this company https://www.chipstack.ai/company
- They use the term *mental model* a lot. It reads a lot like [baiAssertionForgeEnhancingFormal2025](baiAssertionForgeEnhancingFormal2025.md) which is from Nvidia
- Cadence has also partnered with Nvidia https://www.youtube.com/watch?v=k0Rgc3ZH5Co
- The models seems to be swappable. 
- They use this on tenstorrent, which is a RISC-V core
	- They have a free verilator model

# Cadence Podcast with Altera
- He also mention "mental model"
- Says that the models can very well keep up with small to medium designs
- But for larger design it loses focus and he says that we need some coverage feedback loop

# Hamid's interview
https://www.youtube.com/watch?v=U2DydCt41vw

# Minutes
- Boom core running on FPGA
- Kumaresh's mining technique is more portable and even works with BOOM
- Tom: Direction to go in the future?
	- Tie to some ground truth
		- another design
		- spec
		- No ground truth?
			- ISA, MCM specs are implicit
		- for LLM feed everything through
		- For periscope
			- The assertions are the spec
			- Simulation in C++ can't be used in JG
				- because many of the verification stuff cannot be synthesized (malloc, free, etc...)
		- Cadence meeting implied spec to assertions
		- Cat-3 assumptions to prove unprovable LLM-generated assertions?
		- RISCV spec written in Sail language