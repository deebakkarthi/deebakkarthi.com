---
title: SVA generation benchmarks for LLMs
date:  2026-07-11T13:40:11-04:00
tags:
mathjax: false
---
# Assertion Generation Benchmarks

| Title                                                              | Authors           | Affiliation                                                                                              | Venue                  |
| ------------------------------------------------------------------ | ----------------- | -------------------------------------------------------------------------------------------------------- | ---------------------- |
| [AssertLLM](fangAssertLLMGeneratingEvaluating2024.md)              | Fang et al.       | HKUST                                                                                                    | ICLAD ‘24, ASP-DAC ‘25 |
| [FVEval](kangFVEvalUnderstandingLanguage2024.md)                   | Kang et al.       | UCB, Nvidia                                                                                              | DATE '25               |
| [AssertionBench](pulavarthiAssertionBenchBenchmarkEvaluate2025.md) | Pulavarthi et al. | UIC, Microsoft                                                                                           | NAACL '25              |
| [OpenLLM-RTL](liuOpenLLMRTLOpenDataset2025.md)                     | Liu et al.        | HKUST                                                                                                    | ICCAD '25              |
| [CVDP](pinckneyComprehensiveVerilogDesign2025.md)                  | Pinckney et al.   | Nvidia                                                                                                   | arXiv 06/25            |
| [AssertLLM2](wuAssertLLM2ComprehensiveLLM2026.md)                  | Wu et al.         | HKUST                                                                                                    | arXiv 05/26            |
| [FIXME](wanFIXMEEndtoEndBenchmarking2026.md)                       | Wan et al.        | Southeast University, NCTIEDA, Texas Tech, City University of Hong Kong, Chinese University of Hong Kong | AAAI-26                |
| [HierSVA](nieHierSVADataSynthesis2026.md)                          | Nie et al.        | University of Washington                                                                                 | arXiv                  | 

# Approach

| Title                                                              | Approach               | Dataset                               |
| ------------------------------------------------------------------ | ---------------------- | ------------------------------------- |
| [AssertLLM](fangAssertLLMGeneratingEvaluating2024.md)              | Spec                   | Opencores                             |
| [FVEval](kangFVEvalUnderstandingLanguage2024.md)                   | Prompt+RTL, RTL        | Synthetic FSM and Arithmetic Pipeline |
| [AssertionBench](pulavarthiAssertionBenchBenchmarkEvaluate2025.md) | RTL                    | Opencores                             |
| [OpenLLM-RTL](liuOpenLLMRTLOpenDataset2025.md)                     | Spec                   | Opencores                             |
| [CVDP](pinckneyComprehensiveVerilogDesign2025.md)                  | Prompt+RTL             | Nvidia Engineers                      |
| [AssertLLM2](wuAssertLLM2ComprehensiveLLM2026.md)                  | Spec                   | Opencores                             |
| [FIXME](wanFIXMEEndtoEndBenchmarking2026.md)                       | Spec+RTL               | Custom                                |
| [HierSVA](nieHierSVADataSynthesis2026.md)                          | RTL+Design Information | BaseJump STL                          |

# Red Flags

- [FVEval](kangFVEvalUnderstandingLanguage2024.md) synthetic dataset is derived from just 2 templates - FSM and Arithmetic pipeline. The randomly mutate operators, depth, etc. to create new designs. I don't think this captures every aspect of digital design. An arithmetic pipeline, however deep it might be, has some innate properties. So we are not really exploring much by just changing the depth.
- [AssertionBench](pulavarthiAssertionBenchBenchmarkEvaluate2025.md)'s in-context-examples confuses the models. They could have also used more of Opencores. They don't use the larger designs.
- [FIXME](wanFIXMEEndtoEndBenchmarking2026.md) is closed source. 

I cannot comment on [HierSVA](nieHierSVADataSynthesis2026.md) yet. The other works just use spec documents. This isn't inherently a red flag. Just a different approach.


# The common suspects
- I have identified two distinct groups that have published the most in this space - HKUST and Nvidia
## HKUST
- Some other HKUST works that I have read so far are [liuRTLCoderFullyOpenSource2025](liuRTLCoderFullyOpenSource2025.md) [luRTLLMOpenSourceBenchmark2023](luRTLLMOpenSourceBenchmark2023.md) 
- The last author *Zhiyao Xie* seems to be the common link between them.
- His [github](https://github.com/hkust-zhiyao) is also where almost all of these works resides
## Nvidia
- [liuInvitedPaperVerilogEval2023](liuInvitedPaperVerilogEval2023.md), [baiAssertionForgeEnhancingFormal2025](baiAssertionForgeEnhancingFormal2025.md), [liuDomainAdaptedLLMsVLSI2024](liuDomainAdaptedLLMsVLSI2024.md) are some other works
- Similarly they all have the same last author - *Mark Haoxing Ren*

--- 

# Related
[20260701T100607-literature_survey](20260701T100607-literature_survey.md)