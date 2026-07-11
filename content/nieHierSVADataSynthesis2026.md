---
title:  "HierSVA: A Data Synthesis Pipeline, Dataset, and Benchmark for LLM-Driven Hierarchical Hardware Formal Verification"
date: 2026-07-11T14:08:13-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2026</dd>
<dt>Authors</dt>
<dd>Maohua Nie, Jiang Zhu, Jingqun Zhang, Zhichen Zeng, Jiayi Wang, Sibo Zhang, Jialin Wang, C.-J. Richard Shi</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2606.13706">10.48550/arXiv.2606.13706</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-yellow">"BaseJump STL"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=LIEWW4M5)

A standard library of sorts for SystemVerilog [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=LIEWW4M5)


 <mark class="hltr hltr-yellow">"Applying HierSVA-B to twelve recent LLMs reveals three findings. First, the module-level compile rate is 67.1%; among generated assertions in evaluable runs, 82.1% prove non-vacuously, but the corresponding assertion sets detect only 70.2% of eligible injected faults and cover 36.2% of the formal core. Second, on 211 evaluable model–module entries in the deep subset, assertion sets flag buggy RTL with 0.87 recall, but 40% of predicted-buggy outcomes are false positives on correct RTL, limiting precision to 0.60. Third, agentic mode improves S1-style provability and strength metrics, but gains plateau and oscillate."</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=6BQXQTNC)


 <mark class="hltr hltr-purple">"1 Introduction"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=7WLI8ZNP)


 <mark class="hltr hltr-yellow">"three places"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=U2XA48JU)


 <mark class="hltr hltr-magenta">"limited sources of reference assertions"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=ZBSS5KMJ)

Why do we need reference assertions? Can't we just test the generated assertions with a Jasper? Are we checking for some sort of equivalence with the golden set? [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=ZBSS5KMJ)


 <mark class="hltr hltr-yellow">"These limitations reflect the absence of a reusable pipeline for synthesizing reference assertions directly from RTL"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=IYIMXHQC)


 <mark class="hltr hltr-yellow">"Second, existing reference  ∗Equal Contribution.  Preprint.  arXiv:2606.13706v1 [cs.AR] 9 Jun 2026 datasets are correspondingly small, flat, or templated, with cross-module dependencies excluded by construction [22]"</mark> [Page 1](zotero://open-pdf/library/items/5PCHB4TI?page=1&annotation=WP2RPUN3)


 <mark class="hltr hltr-yellow">"Third, existing evaluations focus on syntax correctness and pass-or-fail metrics, leaving out vacuity, mutation coverage, and specification faithfulness [36, 24, 14]."</mark> [Page 2](zotero://open-pdf/library/items/5PCHB4TI?page=2&annotation=5ULMF8KT)


 <mark class="hltr hltr-yellow">"First, the module-level compile rate is 67.1%; among generated assertions in evaluable runs, 82.1% prove non-vacuously. However, the corresponding assertion sets detect only 70.2% of eligible injected faults and cover only 36.2% of the formal core. This coverage gap becomes more pronounced with deeper hierarchy, as formal-core coverage drops from 75.5% at the bottom-most level to 5.9% at the second-to-top-most level. Second, on 211 evaluable model–module entries in the deep subset, LLM-generated assertion sets flag the buggy RTL with aggregate recall 0.87. However, 40% of predicted-buggy outcomes are false positives on the correct RTL, limiting aggregate precision to 0.60. Third, agentic mode partially improves the provability-versus-strength gap on S1-style metrics, but its gains plateau and fluctuate across iterations."</mark> [Page 2](zotero://open-pdf/library/items/5PCHB4TI?page=2&annotation=8BBVE4YU)


 <mark class="hltr hltr-purple">"2 Related Work"</mark> [Page 2](zotero://open-pdf/library/items/5PCHB4TI?page=2&annotation=3LDSD626)


 <mark class="hltr hltr-yellow">"Benchmarks for LLM-generated assertions. A small number of benchmarks evaluate LLMs on SVA generation, and Table 1 positions them against HierSVA along the dimensions relevant to industrial deployment. AssertionBench [36] pairs OpenCores [33] designs with assertions mined using GoldMine [40] and HARM [17], and reports a pass/CEX/error trichotomy under JasperGold. FVEval [22] introduces three sub-benchmarks built from expert-written, synthetically generated, and template-generated test cases. Its Design2SVA subset uses parameterized pipeline templates and FSM templates rather than industrial multi-module codebases such as OpenTitan [25], thereby sidestepping the cross-module dependency context that HierSVA-B targets. AssertEval [24], AssertLLM [14], VERT [28], and CVDP [35] similarly focus on small open-source or synthetic designs, with evaluation protocols that either skip formal evaluation or fold quality into a single pass/fail number. More details and comparisons with this work are given in Appendix G."</mark> [Page 2](zotero://open-pdf/library/items/5PCHB4TI?page=2&annotation=35DD3B9N)




Literature survey [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=DDIETUBA)

![[assets/zimage-nieHierSVADataSynthesis2026-3-x99-y442.png]]

 <mark class="hltr hltr-purple">"3 HierSVA-SP: Dataset Synthesis Pipeline"</mark> [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=7IHPX3CJ)


 <mark class="hltr hltr-purple">"3.1 Design Principles: Following Industry Practice"</mark> [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=BGH52BE4)


 <mark class="hltr hltr-magenta">"assume-guarantee composition (Section 3.3), mutation analysis through FTA, and formal core coverage analysis"</mark> [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=NE2AZVSL)

I dont know what these mean [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=NE2AZVSL)


 <mark class="hltr hltr-purple">"3.2 RTL Preprocessing"</mark> [Page 3](zotero://open-pdf/library/items/5PCHB4TI?page=3&annotation=C9NCE4FT)


 <mark class="hltr hltr-purple">"3.3 Hierarchical Composition with Submodule Contracts"</mark> [Page 4](zotero://open-pdf/library/items/5PCHB4TI?page=4&annotation=AUFKX5WP)


 <mark class="hltr hltr-purple">"3.4 Iterative Synthesis with Formal Feedback"</mark> [Page 4](zotero://open-pdf/library/items/5PCHB4TI?page=4&annotation=IRU7HQRI)


 <mark class="hltr hltr-purple">"4 HierSVA-DS: The Dataset"</mark> [Page 5](zotero://open-pdf/library/items/5PCHB4TI?page=5&annotation=4GUUZC34)


 <mark class="hltr hltr-purple">"5 HierSVA-B: Benchmark Framework"</mark> [Page 6](zotero://open-pdf/library/items/5PCHB4TI?page=6&annotation=SU9FYJR5)


 <mark class="hltr hltr-purple">"6 Evaluation and Results Analysis"</mark> [Page 7](zotero://open-pdf/library/items/5PCHB4TI?page=7&annotation=MVHZB4H7)


 <mark class="hltr hltr-purple">"7 Conclusion and Discussion"</mark> [Page 9](zotero://open-pdf/library/items/5PCHB4TI?page=9&annotation=9T4C6BXD)




%% Import Date: 2026-07-11T14:08:20.980-04:00 %%
