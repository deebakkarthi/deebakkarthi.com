---
title:  "Specification and Formal Verification of Hardware–Software Contracts for High-Assurance Computer Architectures"
date: 2026-06-11T12:21:01-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2025</dd>
<dt>Authors</dt>
<dd>Caroline Trippel</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1109/MC.2025.3573841">10.1109/MC.2025.3573841</a></dd>
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

 <mark class="hltr hltr-blue">"The verification challenge: Despite decades of advancements in formal methods tools, ensuring that a hardware implementation (that is, microarchitecture) upholds the design specifications (including traditional ISAs and more) it intends to remains highly difficult."</mark> [Page 87](zotero://open-pdf/library/items/C5CDNYM2?page=87&annotation=RL6QMYUY)


 <mark class="hltr hltr-blue">"Robust HW–SW contracts and the analyses they support are only useful if we can verify hardware compliance—a grand challenge. As evidence, a 2024 Siemens EDA and Wilson Research Group study found that FPGA and IC/ASIC design projects spend significant time on verification, yet critical bugs escape to silicon in 87% and 86% of these projects, respectively.7,8 Verifying next-generation HWSW contracts that address the previously discussed specification challenge will exacerbate this issue. Plus, as artificial intelligence (AI)-driven tools gain traction in the hardware design space, the number of presilicon bugs that must be found and fixed will likely increase. This projection partially stems from the fact that AI tools may initially generate erroneous designs due to limited representative training data. More fundamentally though, ambiguity in natural language design specifications allows multiple plausible implementations, some of which are misaligned with designer intent."</mark> [Page 88](zotero://open-pdf/library/items/C5CDNYM2?page=88&annotation=ZQFGYFRI)


 <mark class="hltr hltr-blue">"The industry-standard approach to formally verifying that a microarchitecture upholds some design specification is topdown: Verification engineers manually map abstract specification requirements down to complex (hard-to-check) formal properties over design signals and evaluate the design’s adherence to these properties using formal methods tools, especially model checkers. This process requires significant manual decomposition of the properties and design to scale."</mark> [Page 88](zotero://open-pdf/library/items/C5CDNYM2?page=88&annotation=ELYIA7Q6)


 <mark class="hltr hltr-yellow">"For certain classes of especially hard verification problems, our work adopts an alternative bottom-up approach: Many simple (easy-to-check) formal properties are automatically generated from templates and static netlist analysis and checked against the design under verification (DUV) to synthesize (that is, reverse-engineer) a formally verified specification from it. Synthesized specifications reflect hardware reality and can be analyzed (for example, directly comparing to designer expectation) to detect bugs."</mark> [Page 89](zotero://open-pdf/library/items/C5CDNYM2?page=89&annotation=DTBJTWPQ)




%% Import Date: 2026-06-11T12:21:06.695-04:00 %%
