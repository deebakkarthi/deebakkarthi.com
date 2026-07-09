---
title:  "FVEval: Understanding Language Model Capabilities in Formal Verification of Digital Hardware"
date: 2026-07-09T16:54:01-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2024</dd>
<dt>Authors</dt>
<dd>Minwoo Kang, Mingjie Liu, Ghaith Bany Hamad, Syed Suhaib, Haoxing Ren</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2410.23299">10.48550/arXiv.2410.23299</a></dd>
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

 <mark class="hltr hltr-yellow">"in tasks pertaining to FV."</mark> [Page 1](zotero://open-pdf/library/items/X6XIXZA7?page=1&annotation=XJZW5KUB)

What should be my focus? Is it on FV as a whole or just generating assertions from a RTL design? [Page 1](zotero://open-pdf/library/items/X6XIXZA7?page=1&annotation=XJZW5KUB)


 <mark class="hltr hltr-yellow">"The benchmark consists of three sub-tasks that measure LLM capabilities at different levels—from the generation of SystemVerilog assertions (SVAs) given natural language descriptions to reasoning about the design RTL and suggesting assertions directly without additional human input."</mark> [Page 1](zotero://open-pdf/library/items/X6XIXZA7?page=1&annotation=6JP2JL27)


 <mark class="hltr hltr-purple">"1 Introduction"</mark> [Page 1](zotero://open-pdf/library/items/X6XIXZA7?page=1&annotation=2TAUDV7H)


 <mark class="hltr hltr-blue">"FV workflows suffer from steep engineering costs of manually crafting formal testbenches and collateral by human experts."</mark> [Page 1](zotero://open-pdf/library/items/X6XIXZA7?page=1&annotation=7R8NV3AW)


 <mark class="hltr hltr-yellow">"While prior work has demonstrated that current LLMs have the potential to generate hardware assertions, their evaluation, however, has been limited to a hand-select set of test instances with typically less than 10 or 20 problems. Due to the dearth of publicly available repositories of reliable designs and formal testbenches, it has been challenging to curate a dataset for evaluation that encompasses a variety of designs. Furthermore, prior evaluation of LLMs has considered a limited set of tasks which renders a holistic evaluation of model capabilities unviable. This altogether raises the question: how should we comprehensively understand and quantify current LLMs capabilities in performing tasks in hardware formal verification?"</mark> [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=RA2VP3U5)

Motivation [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=RA2VP3U5)


 <mark class="hltr hltr-yellow">"diverse tasks"</mark> [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=KUWXQIL4)

I agree that it is on diverse tasks but how diverse are the tasks themselves? [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=KUWXQIL4)


 <mark class="hltr hltr-yellow">"As test problem instances, we either collect human-written designs and testbenches or present methodologies to scalably generate synthetic yet realistic test cases motivated  2 by real-world designs"</mark> [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=YM4VJ7UA)

To combat the lack of datasets they generate new stuff. I don't think they are generated on the fly. Their repository has scripts to generate them and they recommended some knobs to generate a small set of them.
I think this is distinct from a truly dynamic test where each run an entirely new test is generated without a template. Are they different FSM examples that different? They different in scale and may have different operators but they fundamentally represent the same thing. [Page 2](zotero://open-pdf/library/items/X6XIXZA7?page=2&annotation=YM4VJ7UA)


 <mark class="hltr hltr-purple">"2 Preliminaries"</mark> [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=XADNZFUK)


 <mark class="hltr hltr-purple">"3 Overview of the FVEval Benchmark Framework"</mark> [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=6L7JHE9G)


 <mark class="hltr hltr-purple">"3.1 Motivation"</mark> [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=W8FT6XE7)


 <mark class="hltr hltr-red">"2) writing testbenches that consist of assertions checking the design against the specification"</mark> [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=H7M97Z7U)

They do write testbenches for RV but Idk if I would all them testbenches in the context of FV [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=H7M97Z7U)


 <mark class="hltr hltr-yellow">"Do LLMs have the capability to generate SVA assertions, given real-world, human-written testbenches and high-level specifications of design functionality?"</mark> [Page 3](zotero://open-pdf/library/items/X6XIXZA7?page=3&annotation=SX2GPQQH)


 <mark class="hltr hltr-yellow">""Can LLMs flexibly handle diverse NL specifications of formal properties and accurately formulate the same formal logic in SVA syntax?""</mark> [Page 4](zotero://open-pdf/library/items/X6XIXZA7?page=4&annotation=HLFWS6Y9)


 <mark class="hltr hltr-yellow">"In Design2SVA, we ask: "Can LLMs craft relevant SVA assertions directly from design RTL and without human guidance?" Compared to previous benchmarks, this task demands a higher-level of understanding RTL code and the semantics of the hardware module described by the RTL. Models successful in this benchmark could have potential to realize further advanced usages of language models in hardware FV, as artificial agents assisting human engineers."</mark> [Page 4](zotero://open-pdf/library/items/X6XIXZA7?page=4&annotation=U68989S7)


 <mark class="hltr hltr-purple">"3.2 NL2SVA-Human: Assertion Generation with Real-World Testbenches"</mark> [Page 4](zotero://open-pdf/library/items/X6XIXZA7?page=4&annotation=WS9TJ4EM)


 <mark class="hltr hltr-yellow">"NL2SVA-Human Inputs  Input Context: Testbench SystemVerilog [arbiter_rr.sv] Question: Create a SVA assertion that checks: whether starvation occurs, i.e. check that each request from client is eventually granted.  Expected Output (Reference Assertion) assert property (@(posedge clk) disable iff (tb_reset) (!busy && |tb_req && (tb_gnt == ’d0)) !== 1’b1 );  LLM Generated Output Examples: GPT-4:  assert property (@(posedge clk) disable iff (tb_reset) (tb_req && !busy) |-> tb_gnt );  Llama-3-70B-Chat:  assert property (@(posedge clk) disable iff (tb_reset) |tb_req && !busy |=> ##[1:$] (|tb_gnt)) );"</mark> [Page 4](zotero://open-pdf/library/items/X6XIXZA7?page=4&annotation=ZVBGUFT5)


 <mark class="hltr hltr-yellow">"Our method utilizes a custom-implemented Jasper function that formally proves logical equivalence, and further, can also evaluate whether there is an implication relationship between the two assertions. We also report a relaxed metric of functional accuracy that includes such a case of partial equivalence and thereby capture the performance of LLMs at a finer granularity than only considering exact equivalence."</mark> [Page 5](zotero://open-pdf/library/items/X6XIXZA7?page=5&annotation=TP66VJ9E)

The assertion generated by the LLM just has to have the same functionality rather than be verbatim.

How do they prove equivalence? [Page 5](zotero://open-pdf/library/items/X6XIXZA7?page=5&annotation=TP66VJ9E)


 <mark class="hltr hltr-purple">"3.3 NL2SVA-Machine: Synthetic Benchmark for Stress-Testing Formal Assertion Generation"</mark> [Page 5](zotero://open-pdf/library/items/X6XIXZA7?page=5&annotation=DJMJ9DTR)


 <mark class="hltr hltr-yellow">"(1) random SVA assertion generation, based on random sampling of SVA operators and symbolic signal names; (2) LLM generation of NL descriptions for each random assertion; (3) LLM as a critic to assess whether the NL description accurately reflects the temporal logic of the assertion—if this fails, re-try description generation; and (4) Human inspection to finalize the appropriateness of generated descriptions."</mark> [Page 5](zotero://open-pdf/library/items/X6XIXZA7?page=5&annotation=HL4SDLBV)


 <mark class="hltr hltr-purple">"3.4 Design2SVA: Direct Generation of Formal Assertions from Design RTL Alone"</mark> [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=VJMWAC4Z)


 <mark class="hltr hltr-yellow">"Our objective in formulating the Design2SVA benchmark is to present a set of test cases consisting of design RTL that are: (1) sufficiently correct, as in there exist formal properties that can be proven to be true; (2) relevant to real-world FV use-cases; (3) suitable as test instances for language models; and (4) varied in terms of complexity. While it is ideal to collect and curate existing RTL examples, we find that openly available SystemVerilog/Verilog repositories contain limited numbers of verified RTL designs. Of the cases that satisfy the first and second criteria, such as module instances from OpenTitan [33], these cases fail to be suitable for language model evaluation, as each module is a part of a large System-on-a-Chip (SoC) system and the context needed to resolve all sub-module dependency information is prohibitively large."</mark> [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=N27Y7YVB)

Reasons why not to use Existing RTL design such as opencores [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=N27Y7YVB)


 <mark class="hltr hltr-yellow">"scalably generate complex and parameterized synthetic test instances that are derived from common design patterns encountered in industrial FV workflows."</mark> [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=S9WYCGYR)


 <mark class="hltr hltr-yellow">"arithmetic pipelines that resemble scenarios where we check for data integrity and forward propagation across datapaths; and (2) finite-state machines (FSMs) that commonly appear in control logic implementations, such as cache controllers, memory interfaces, etc."</mark> [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=MVB2IVGD)


 <mark class="hltr hltr-yellow">"(1) Syntax—we measure the LLM generated assertion is first syntactically correct; (2) Functionality—we use the results of formal proofs, i.e. whether the assertions are proven with model checkers and other formal engines in industrial tools, as an indication of functional correctness."</mark> [Page 6](zotero://open-pdf/library/items/X6XIXZA7?page=6&annotation=PQFAYPTV)


 <mark class="hltr hltr-purple">"4 Results and Analysis"</mark> [Page 8](zotero://open-pdf/library/items/X6XIXZA7?page=8&annotation=2M8QGSA3)


 <mark class="hltr hltr-purple">"4.1 Experiment Setup"</mark> [Page 8](zotero://open-pdf/library/items/X6XIXZA7?page=8&annotation=QQTF5FSW)


 <mark class="hltr hltr-purple">"4.2 NL2SVA-Human Results"</mark> [Page 8](zotero://open-pdf/library/items/X6XIXZA7?page=8&annotation=PDMDIMDV)


 <mark class="hltr hltr-yellow">"LLMs can generate syntactically correct SVA code but are still prone to hallucinations."</mark> [Page 9](zotero://open-pdf/library/items/X6XIXZA7?page=9&annotation=EAKWVMEF)


 <mark class="hltr hltr-yellow">"Partial functional equivalence as a correctness metric reveals further understanding of model capabilities."</mark> [Page 10](zotero://open-pdf/library/items/X6XIXZA7?page=10&annotation=CSFYZNSN)


 <mark class="hltr hltr-yellow">"Sampling multiple response candidates improves accuracy."</mark> [Page 11](zotero://open-pdf/library/items/X6XIXZA7?page=11&annotation=I3FAK27M)


 <mark class="hltr hltr-purple">"4.3 NL2SVA-Machine Results"</mark> [Page 11](zotero://open-pdf/library/items/X6XIXZA7?page=11&annotation=WBLWYC8T)


 <mark class="hltr hltr-purple">"4.4 Design2SVA Results"</mark> [Page 12](zotero://open-pdf/library/items/X6XIXZA7?page=12&annotation=27EERBUQ)


 <mark class="hltr hltr-purple">"5 Related Work"</mark> [Page 14](zotero://open-pdf/library/items/X6XIXZA7?page=14&annotation=QCIEGMGM)


 <mark class="hltr hltr-yellow">"However, existing evaluations of LLMs on FV [34, 11, 27, 41] are limited to less than ∼20 cases of test instances and have considered a limited variety of task settings."</mark> [Page 14](zotero://open-pdf/library/items/X6XIXZA7?page=14&annotation=H4UNCV4U)

Related works. They don't seem to cite much. These don't seem to be explicit benchmarks. [Page 14](zotero://open-pdf/library/items/X6XIXZA7?page=14&annotation=H4UNCV4U)


 <mark class="hltr hltr-purple">"6 Limitations and Future Work"</mark> [Page 15](zotero://open-pdf/library/items/X6XIXZA7?page=15&annotation=JQWR8LNT)


 <mark class="hltr hltr-yellow">"besides the arithmetic pipeline and FSMs considered in this work."</mark> [Page 15](zotero://open-pdf/library/items/X6XIXZA7?page=15&annotation=4JEME2QW)


 <mark class="hltr hltr-purple">"7 Conclusion"</mark> [Page 15](zotero://open-pdf/library/items/X6XIXZA7?page=15&annotation=TFRLEYN6)


 <mark class="hltr hltr-purple">"Acknowledgements"</mark> [Page 15](zotero://open-pdf/library/items/X6XIXZA7?page=15&annotation=3SCMDUBL)




%% Import Date: 2026-07-09T16:54:06.137-04:00 %%
