---
title:  "AssertLLM: Generating and Evaluating Hardware Verification Assertions from Design Specifications via Multi-LLMs"
date: 2026-07-11T14:10:36-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2024</dd>
<dt>Authors</dt>
<dd>Wenji Fang, Mengming Li, Min Li, Zhiyuan Yan, Shang Liu, Zhiyao Xie, Hongce Zhang</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2402.00386">10.48550/arXiv.2402.00386</a></dd>
</dl>

---

# Related
 [[baiAssertionForgeEnhancingFormal2025]]  

# Persistent Notes

<!--- 
%% begin notes %%   --->
- They have "three" LLMs to do Spec analyzing, Signal Mapping and SVA Generation
- They are basically customized system prompts to some model
- They test their approach on a golden I2C RTL design
- Their metrics is just syntax and formally proven %
- Their rationale for omitting Coverage is that their approach only uses the spec document, they won't have access to the internal registers. This makes COI coverage not a suitable choice for them
- Their approach is **pre-RTL**
- This is also propose a small benchmark
- It seems to be mostly opencores designs
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-purple">"I. INTRODUCTION"</mark> [Page 1](zotero://open-pdf/library/items/NBV5U2XM?page=1&annotation=FDW6LWQN)


 <mark class="hltr hltr-yellow">"However, a critical limitation of dynamic methods is that both the generation and evaluation of assertions are on the same RTL"</mark> [Page 1](zotero://open-pdf/library/items/NBV5U2XM?page=1&annotation=CKSX2WKG)


 <mark class="hltr hltr-yellow">"design without referring to a golden reference model. This could lead to the generation of incorrect SVAs due to flaws in the RTL design, which these methods might not detect."</mark> [Page 1](zotero://open-pdf/library/items/NBV5U2XM?page=1&annotation=TBLB84U9)


 <mark class="hltr hltr-purple">"II. PRELIMINARIES AND PROBLEM FORMULATION"</mark> [Page 2](zotero://open-pdf/library/items/NBV5U2XM?page=2&annotation=Q435NWZV)


 <mark class="hltr hltr-purple">"A. Natural Language Specification"</mark> [Page 2](zotero://open-pdf/library/items/NBV5U2XM?page=2&annotation=U2V8X52H)


 <mark class="hltr hltr-purple">"B. LLM for EDA"</mark> [Page 3](zotero://open-pdf/library/items/NBV5U2XM?page=3&annotation=BGPJXJ6X)


 <mark class="hltr hltr-purple">"C. Problem Fromulation"</mark> [Page 3](zotero://open-pdf/library/items/NBV5U2XM?page=3&annotation=T58D5G85)


 <mark class="hltr hltr-purple">"B. Specification Information Extraction"</mark> [Page 3](zotero://open-pdf/library/items/NBV5U2XM?page=3&annotation=GSLD2PSG)


 <mark class="hltr hltr-purple">"C. Signal Definition Mapping"</mark> [Page 4](zotero://open-pdf/library/items/NBV5U2XM?page=4&annotation=DZMJ86YU)


 <mark class="hltr hltr-purple">"D. Automatic Assertion Generation"</mark> [Page 4](zotero://open-pdf/library/items/NBV5U2XM?page=4&annotation=WFP4Q7KN)


 <mark class="hltr hltr-magenta">"Upon inputting the overall architecture diagram of the design, the LLM is provided with the structured specifications and mapped signal relationships from the previous LLMs for each signal."</mark> [Page 5](zotero://open-pdf/library/items/NBV5U2XM?page=5&annotation=VRKWQX8E)

Will an architecture diagram be available for every design? [Page 5](zotero://open-pdf/library/items/NBV5U2XM?page=5&annotation=VRKWQX8E)


 <mark class="hltr hltr-purple">"E. Generated Assertion Evaluation"</mark> [Page 5](zotero://open-pdf/library/items/NBV5U2XM?page=5&annotation=4FAU6RFK)


 <mark class="hltr hltr-purple">"F. Proposed Benchmark"</mark> [Page 6](zotero://open-pdf/library/items/NBV5U2XM?page=6&annotation=4P37MIUZ)


 <mark class="hltr hltr-yellow">"Our benchmark consists of 20 open-source designs, covering a diverse array of applications including microprocessors, system-on-chip architectures, communication protocols, arithmetic units, and cryptographic modules."</mark> [Page 6](zotero://open-pdf/library/items/NBV5U2XM?page=6&annotation=537TETTZ)


 <mark class="hltr hltr-purple">"IV. EXPERIMENTAL RESULTS"</mark> [Page 6](zotero://open-pdf/library/items/NBV5U2XM?page=6&annotation=N68D5RA7)


 <mark class="hltr hltr-purple">"A. Experimental Setup"</mark> [Page 6](zotero://open-pdf/library/items/NBV5U2XM?page=6&annotation=337S3LGB)


 <mark class="hltr hltr-purple">"B. Evaluation Metrics"</mark> [Page 6](zotero://open-pdf/library/items/NBV5U2XM?page=6&annotation=ECJT2YPV)


 <mark class="hltr hltr-purple">"C. Assertion Generation Quality"</mark> [Page 7](zotero://open-pdf/library/items/NBV5U2XM?page=7&annotation=UTHYHBIE)


 <mark class="hltr hltr-yellow">"To illustrate the efficacy of AssertLLM, we apply it to a comprehensive design case: the ”I2C” protocol."</mark> [Page 7](zotero://open-pdf/library/items/NBV5U2XM?page=7&annotation=TQJSQAZX)


 <mark class="hltr hltr-purple">"D. Ablation Study"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=8H2338T6)


 <mark class="hltr hltr-purple">"V. DISCUSSION"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=BQT43ANX)


 <mark class="hltr hltr-purple">"A. Coverage in SVA Evaluation"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=6B33WMCT)


 <mark class="hltr hltr-yellow">"Given that our SVA generation process is based solely on the information available in the specification documents, which typically detail external interfaces like IO ports and"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=F7BZUDNF)


 <mark class="hltr hltr-yellow">"architectural-level registers rather than internal signals, COI coverage does not align well with our evaluation criteria. This coverage metric assumes a level of design implementation detail that goes beyond the scope of natural language specifications, making it less applicable for assessing the completeness or effectiveness of SVAs generated at this pre-RTL stage."</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=X6MYDB8I)


 <mark class="hltr hltr-purple">"B. Evaluating and Enhancing Specification Quality with AssertLLM"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=XLNCQFIV)


 <mark class="hltr hltr-purple">"VI. CONCLUSION"</mark> [Page 8](zotero://open-pdf/library/items/NBV5U2XM?page=8&annotation=IS5IK59S)




%% Import Date: 2026-07-11T14:10:38.606-04:00 %%
