---
title: Does having access to RTL change the metrics being used?
date:  2025-10-23T15:42:56-04:00
tags:
- uva
- assertion_gen
---
# State of the art in terms of assertion generation?

- Goldmine
- HARM
- a-team
- Artmine
- DDG


All of the coverage statistics cannot be used without an RTL design

Metrics can mean two things:
- the thing used in ranking
- thing used by the authors to compare their tool against other SOTA



# Ranking Metrics
| Tool     | Year | RTL | Metrics                                                                      |
| -------- | ---- | --- | ---------------------------------------------------------------------------- |
| Goldmine | 2010 | Yes | Formal Verifier is used to rule out wrong assertions. There is no ranking    |
|          |      |     | They just asked domain experts on how they would classify the generated ones |
| HARM     | 2022 | No  | User defined metrics using contingency matrix, fault coverage                |
|          |      |     | and other similar ones using the trace                                       |
| A-TEAM   | 2017 | No  | Gain in Fault Coverage allows an assertion to be preserved else dropped      |
| ArtMine  | 2024 | No  | Idk if they actually shortlist                                                                             |


# Evaluation compared to other SOTA metrics
| Tool            | RTL Used | Metrics used         |
| --------------- | -------- | -------------------- |
| Goldmine (2010) | Yes      | Conditional Coverage |
| HARM            | No       | Fault Coverage       |
| A-TEAM          | No       | Fault Coverage       |
| ArtMine         | No       | Fault Coverage       |


All of the fault coverage techniques seem to stem from this one paper called as "Properties Incompleteness Evaluation  by Functional Verification"

All of the fault coverage stuff can be thought of as like an substitute for coverage metrics provided by a formal verifier.




