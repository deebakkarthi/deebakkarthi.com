---
title:  "AssertionForge: Enhancing Formal Verification Assertion Generation with Structured Representation of Specifications and RTL"
date: 2026-01-02T14:54:45-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2025</dd>
<dt>Authors</dt>
<dd>Yunsheng Bai, Ghaith Bany Hamad, Syed Suhaib, Haoxing Ren</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2503.19174">10.48550/arXiv.2503.19174</a></dd>
</dl>

---

# Related
 [fangAssertLLMGeneratingEvaluating2024](fangAssertLLMGeneratingEvaluating2024.md)  

# Persistent Notes

<!--- 
%% begin notes %%   --->
- This works uses both the RTL and the NL specification to generate assertions
- They compare their work against [fangAssertLLMGeneratingEvaluating2024](fangAssertLLMGeneratingEvaluating2024.md)
- They use these benchmarks
	- APB
	- ETHMAC
	- OPENMSP430
	- SOCKIT
	- UART
- The metrics used are
	- Number of assertions generated
	- Number of syntactically correct assertions 
	- Number of formally proven assertions 
	- COI coverage
		- Statement
		- Branch
		- Functional
		- Toggle

| Benchmark  | Proven   | Proven % |
| ---------- | -------- | -------- |
| APB        | 220/615  | 35.7     |
| ETHMAC     | 208/1673 | 12.4     |
| OPENMSP430 | 327/1600 | 20.4     |
| SOCKIT     | 49/448   | 10.9     |
| UART       | 50/279   | 17.9     |

| Benchmark  | Syntax   | Syntax % |
| ---------- | -------- | -------- |
| APB        | 549/615  | .89      |
| ETHMAC     | 960/1673 | .57      |
| OPENMSP430 | 698/1600 | .44      |
| SOCKIT     | 136/448  | .30      |
| UART       | 174/279  | .62      |

<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-purple">"I. INTRODUCTION"</mark> [Page 1](zotero://open-pdf/library/items/8CB3PSZA?page=1&annotation=YR4G3XZE)


 <mark class="hltr hltr-yellow">"Specification-focused approaches like ASSERTLLM extract design intent from the often ambiguous and incomplete specifications"</mark> [Page 1](zotero://open-pdf/library/items/8CB3PSZA?page=1&annotation=6R6PB2BX)


 <mark class="hltr hltr-yellow">"Conversely, RTL-focused approaches can capture implementation details but lack understanding of original design intent and high-level functionality, producing assertions that verify implementation without validating adherence to specifications."</mark> [Page 1](zotero://open-pdf/library/items/8CB3PSZA?page=1&annotation=S636SSR3)


 <mark class="hltr hltr-yellow">"We hypothesize that explicitly constructing a structured, interconnected mental model of the design—one that links design intent with RTL behavior—will provide a more robust foundation for assertion generation. This mirrors how verification engineers manually synthesize information from multiple sources to write meaningful assertions."</mark> [Page 1](zotero://open-pdf/library/items/8CB3PSZA?page=1&annotation=LEVTHXLH)


 <mark class="hltr hltr-purple">"II. RELATED WORK"</mark> [Page 2](zotero://open-pdf/library/items/8CB3PSZA?page=2&annotation=EYCBF5FD)


 <mark class="hltr hltr-purple">"III. METHODOLOGY"</mark> [Page 2](zotero://open-pdf/library/items/8CB3PSZA?page=2&annotation=NPWVKRY3)


 <mark class="hltr hltr-purple">"IV. EXPERIMENTS"</mark> [Page 4](zotero://open-pdf/library/items/8CB3PSZA?page=4&annotation=LPEHR5X8)


 <mark class="hltr hltr-yellow">"COI Functional Coverage, COI Branch Coverage, COI Statement Coverage, and COI Toggle Coverage,"</mark> [Page 5](zotero://open-pdf/library/items/8CB3PSZA?page=5&annotation=RBZ8SJ2G)


 <mark class="hltr hltr-purple">"V. CONCLUSION AND FUTURE WORK"</mark> [Page 6](zotero://open-pdf/library/items/8CB3PSZA?page=6&annotation=4UIT3Q45)




%% Import Date: 2026-01-02T14:54:51.714-05:00 %%
