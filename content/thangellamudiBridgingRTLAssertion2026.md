---
title:  "Bridging RTL and Assertion Generation With Large Language Models"
date: 2026-06-25T14:19:47-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2026</dd>
<dt>Authors</dt>
<dd>Jayanth Thangellamudi, Sai Manoj Pudukotai Dinakarrao</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1109/MDAT.2026.3670060">10.1109/MDAT.2026.3670060</a></dd>
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

 <mark class="hltr hltr-blue">"Among these, assertion generation is particularly labor-intensive and error-prone, often acting as a bottleneck that delays downstream verification."</mark> [Page 5](zotero://open-pdf/library/items/MEGYA2RN?page=5&annotation=VVVDJHXS)


 <mark class="hltr hltr-yellow">"Despite these advances, current LLM-based approaches remain task-specific and fragmented; some target RTL generation [2], whereas others focus solely on assertion generation [5]. The absence of integration across these two tightly coupled processes leads to: 1) inconsistency between RTL and assertions; 2) limited scalability due to poor task generalization; and 3) weak domain adaptation, as hardware-specific constraints are not embedded deeply into the learning process."</mark> [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=VHBLPWJR)


 <mark class="hltr hltr-red">"In Phase I, the model generates semantically consistent RTL modules; in Phase II, it derives SystemVerilog assertions (SVAs) directly from the generated RTL rather than relying on natural-language prompts."</mark> [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=I5MI8FQF)

What is the difference between this and asking the LLM to generate directly seeing a human written RTL vs it's own? is it the same? [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=I5MI8FQF)


 <mark class="hltr hltr-yellow">"Experimental results on the RTLLM benchmark"</mark> [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=WDN3UHWI)


 <mark class="hltr hltr-red">"correctness"</mark> [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=VJ4X22A3)

What correctness? [Page 6](zotero://open-pdf/library/items/MEGYA2RN?page=6&annotation=VJ4X22A3)


 <mark class="hltr hltr-yellow">"We construct two separate fine-tuning datasets, each containing approximately 26,000 datapoints:"</mark> [Page 8](zotero://open-pdf/library/items/MEGYA2RN?page=8&annotation=5QXGVMSR)


 <mark class="hltr hltr-yellow">"Each datapoint is represented as an instruction–implementation pair, where instructions are handcrafted, template-generated, or extracted from HDL documentation, and Verilog implementations are sourced from open-source codebases or rule-based synthesis."</mark> [Page 8](zotero://open-pdf/library/items/MEGYA2RN?page=8&annotation=N2EAVSFI)


 <mark class="hltr hltr-yellow">"The SVA dataset is constructed independently to fine-tune SVA generation."</mark> [Page 8](zotero://open-pdf/library/items/MEGYA2RN?page=8&annotation=4GYF2QS9)


 <mark class="hltr hltr-yellow">"SVAs are either manually authored by domain experts or generated using LLM-assisted workflows to ensure semantic consistency with the RTL."</mark> [Page 8](zotero://open-pdf/library/items/MEGYA2RN?page=8&annotation=X3PQT5CV)


 <mark class="hltr hltr-magenta">"As shown in Table 2, Stage 2 achieves 88% syntactic validity, with 21 out of 30 designs producing functionally meaningful assertions formally verified using JasperGold."</mark> [Page 12](zotero://open-pdf/library/items/MEGYA2RN?page=12&annotation=77N88RF4)

Does 21/30 mean that in 21 designs all the assertions pass? Does having one failing assertion mean that the design fails? [Page 12](zotero://open-pdf/library/items/MEGYA2RN?page=12&annotation=77N88RF4)


 <mark class="hltr hltr-magenta">"domain-specific adaptation"</mark> [Page 12](zotero://open-pdf/library/items/MEGYA2RN?page=12&annotation=K2EVTZPC)

What is this? [Page 12](zotero://open-pdf/library/items/MEGYA2RN?page=12&annotation=K2EVTZPC)




%% Import Date: 2026-06-25T14:19:49.747-04:00 %%
