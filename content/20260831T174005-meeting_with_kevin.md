---
title: "Meeting with Kevin"
date:  2026-08-31T17:40:05-04:00
tags:
mathjax: false
---

# Default behavior of `claude`

When ran with the following prompt

```txt
Generate SystemVerilog Assertions that hold true for the RTL file below.

<rtl>
{rtl}
</rtl>
```

`opus` was used

```bash
./scripts/small_bench.sh -v -m opus -p prompts/absolute_min.txt
```

The results of this run is stored under `results/20260831T180809_absolute_min`

## Results
### `sockit_owm`
- `claude` automatically generated `bind` statements
```txt
==============================================================
SUMMARY
==============================================================
Properties
Co
nsidered : 137
assertions : 81
- proven : 75 (92.5926%)
- bounded_proven (user) : 0 (0%)
- bounded_proven (auto) : 0 (0%)
- marked_proven : 0 (0%)
- cex : 6 (7.40741%)
- ar_cex : 0 (0%)
- undetermined : 0 (0%)
- unknown : 0 (0%)
- error : 0 (0%)
covers : 56
- unreachable : 13 (23.2143%)
- bounded_unreachable (user): 0 (0%)
- covered : 43 (76.7857%)
- ar_covered : 0 (0%)
- undetermined : 0 (0%)
- unknown : 0 (0%)
- error : 0 (0%)
determined
```

### `sha3`
- `claude` exhibited different behavior this time

| File            | Comment                         |
| --------------- | ------------------------------- |
| `f_permutation` | inline                          |
| `keccak`        | inline                          |
| `padder`        | inline                          |
| `padder1`       | `bind` but immediate assertions |
| `rconst2in1`    | `bind` but immediate assertions |

Didn't compile

## Take-aways
- `claude` has knowledge of `bind`
- We should specifically ask for concurrent assertions

# `absolute_min_with_some_ins.txt`
- I added it should be **bind-able** to the original module
- `sockit_owm` compiled just fine but `sha3` still didn't compile

# `abs_compile`
- I explicitly added it should be **compilable** and there were still issues with `sha3`


# `barebones`
- Not asking it to generate any bindings

```systemverilog
assert property (@(posedge clk) out[63:0] == {out1[479:472], out1[487:480], out1[495:488], out1[503:496], out1[511:504], out1[519:512], out1[527:520], out1[535:528]} || 1'b1);
```

![](../assets/Pasted%20image%2020260831214303.png)

# `ltl`
- Maybe but need more instructions

# `claude`

```systemverilog
// calc recurrence exactly as coded: set by accept, cleared the cycle
// after i[10] (the 12th and last round-pair update) fires
property p_calc_recurrence;
   @(posedge clk) disable iff (reset)
     1'b1 |=> (calc == (($past(calc) & ~$past(i[10])) | $past(accept)));
endproperty
a_calc_recurrence: assert property (p_calc_recurrence);
```


# Meeting Minutes
- Kumaresh has script for workflow to formal verification
- Boom core running on U280
	- Boots linux
	- run unittests
	- Change code in scala?
	- TODO: Get VCDs
	- Setup is straightforward
	- VCD capture via RTL manipulation vs scala manipulation
	- Signal names aren't 1:1
- Try with a skill
	- Still important just to read RTL even if we are not generating RTL
- Try with fable
- Craig at Cadence
	- They must have faced the same thing and overcome
- Jasper guide on SVA
- CVA6 bugs
	- Newer bugs and see if works on our FPGA