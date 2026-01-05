---
title: Cleanup and create own version of AssertionBench
date: 2026-01-03T12:13:41-05:00
tags:
  - assertion_gen
mathjax: false
---
 # Number of source files
 ```bash
 $ find   verified_assertions/   -name '*.sv' -o  -name '*.v'  -type f | wc -l
 261
 ```

# Verified Assertions

- The coverage of verified assertions seem very poor