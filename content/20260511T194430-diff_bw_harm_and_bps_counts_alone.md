---
title: Difference between HARM and BPS Count Alone
date:  2026-05-11T19:44:30-04:00
tags:
mathjax: false
---

# Set Difference

| STAGE            | In HARM Not in BPS | In BPS Not in HARM | In Both |
| ---------------- | ------------------ | ------------------ | ------- |
| frontend.csv     | 467                | 103                | 771     |
| id_stage.csv     | 78                 | 23                 | 29      |
| issue_stage.csv  | 316                | 423                | 959     |
| ex_stage.csv     | 126                | 88                 | 113     |
| commit_stage.csv | 0                  | 33                 | 6       |

# Totals for Sanity Check

| Stage            | HARM | BPS  |
| ---------------- | ---- | ---- |
| frontend.csv     | 1238 | 874  |
| id_stage.csv     | 107  | 52   |
| issue_stage.csv  | 1275 | 1382 |
| ex_stage.csv     | 239  | 201  |
| commit_stage.csv | 6    | 39   |

Actual rules at [20260511T192607-diff_bw_bps_and_harm](20260511T192607-diff_bw_bps_and_harm.md)

Recreate using https://github.com/deebakkarthi/bps_harm_comparison