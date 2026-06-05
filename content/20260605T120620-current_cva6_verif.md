---
title: Current CVA6 verification strategy
date:  2026-06-05T12:06:20-04:00
tags:
mathjax: false
---

- Verification is hosted in a separate repo https://github.com/openhwgroup/core-v-verif
- It doesn't seem to be *formal*. Their repo description is *Functional verification project for the CORE-V family of RISC-V cores.*
- UVM, as far as I know, seems to be some sort of a standardized harness to perform testing.
	- It includes useful data structures and constructs to enable easier testing
	- This also allows for greater composability
- This functional verification essentially compares the register state of a golden model with DUT.
- The granularity seems to be just registers. They say that internal pipeline stuff are ignored. They focus on logical correctness.

# Formally verifying the "ISA"
- I'm not entirely sure what this means. I found this under CV32E40P and not under CVA6. There were some notes about *formally* verifying the ISA and they use Siemens RISC-V app. They say that there are 128 assertions in total.
- But I'm confident that this is not in the granularity that we are focusing on.
- There is these spreadsheets with names of properties but not actual SVA or LTL
- https://github.com/openhwgroup/core-v-verif/tree/master/cv32e40p/docs/VerifPlans/Formal/base_instruction_set
- I tried grepping them in the parent repo (`cv32e40p`) and the verification repo (`core-v-verif`) and I wasn't able to find any match
- There were some assertions in cv32e40p but there were only 147
![](../assets/Pasted%20image%2020260605122354.png)

In conclusion, the effort is mostly on verification through simulation and logical correctness of implementing the RISC-V ISA.