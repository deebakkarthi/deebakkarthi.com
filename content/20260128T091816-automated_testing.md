---
title: Automated Testing
date:  2026-01-28T09:18:16-05:00
tags:
mathjax: false
---


# Questions
- What are some of the problems associated with input generations?
    - Biased
    - Scaling
- What is the monkey theorem?
    - With infinite time, infinite monkeys can write the exact words of Shakespeare
- How does this apply to testing?
    - But we don't have infinite time to test everything
- Give an example of standardization in testing?
    - Using asserts instead of prints
- What is the oracle strategy?
    - Compare the output against some truth
- What is the problem with the oracle strategy?
    - Not scalable
    - Require domain knowledge
- When can the oracle strategy be scalable?
    - Self correcting test or inverse functions
- What is the tradeoff between flakiness and cost?
    - Inversely proportional in many cases
