---
title: Software Logic Midterm Project
date:  2026-03-14T14:32:53-04:00
tags:
mathjax: false
---

LTL in lean?

Convert verilog in some sort of FSM
But is it harder to reason in this FSM space?


Yosys frontend and use the functionalIR to build out a lean4 backend

# Plan
- LeanLTL from one of the mathlib maintainers
- Equivalence between verilog and the generated world may be hard
- It is easier to go from FL to verilog. There are many projects that do this.
- If we want the perfect representation then use yosys frontend to synthesize to FunctionalIR but Idk how to write propositions in the lower dimension
- It feels like I need a shallow embedding of verilog syntax in lean
- At least start with just combinatorial circuits

Ideally want something I can still feed it to actual formal verifier in the end. I don't want the break the existing EDA pipeline




