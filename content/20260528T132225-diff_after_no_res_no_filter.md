---
title: Diff after no restrictions and no filtering
date:  2026-05-28T13:22:25-04:00
tags:
mathjax: false
---

![](../assets/Pasted%20image%2020260528145853.png)

|        | Only in HARM | Only in BPS | In Both |
| ------ | ------------ | ----------- | ------- |
| Proven | 206          | **0**           | 198     |
| CEX    | 1642         | 51          | 2299    | 

# Sanity Checks
## Totals

| Stage        | #(Rules) HARM | #(Rules) BPS |
| ------------ | ------------- | ------------ |
| frontend     | 1371          | 874          |
| id_stage     | 273           | 52           |
| issue_stage  | 2021          | 1382         |
| ex_stage     | 627           | 201          |
| commit_stage | 53            | 39           |
| **TOTAL**    | **4345**      | **2548**     | 

## Proven

| Stage        | #(Proven Rules) HARM | #(Proven Rules) BPS |
| ------------ | -------------------- | ------------------- |
| frontend     | 320                  | 133                 |
| id_stage     | 22                   | 22                  |
| issue_stage  | 43                   | 37                  |
| ex_stage     | 4                    | 3                   |
| commit_stage | 3                    | 3                   |
| **TOTAL**    | **392**              | **198**             |


Notice that the proven rules for HARM here are higher than 392, this is because 12 of the rules that were undetermined in HARM are actually **proven** (I didn't set any time limit).

![](../assets/Pasted%20image%2020260528151009.png)

- The first command shows that the missing rules are all `proven` or `cex`
- The second command shows that the common rules have some `undetermined` in them
- The third command doesn't have any `undetermined` as the value of the key is derived from bps files instead of the harm files