---
title:  "SANGAM: SystemVerilog Assertion Generation via Monte Carlo Tree Self-Refine"
date: 2026-01-02T17:15:32-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2025</dd>
<dt>Authors</dt>
<dd>Adarsh Gupta, Bhabesh Mali, Chandan Karfa</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1109/ICLAD65226.2025.00024">10.1109/ICLAD65226.2025.00024</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
-  Their approach essentially involves a lot of prompt enginerring.
- They have these "different" LLMs, like in [fangAssertLLMGeneratingEvaluating2024](fangAssertLLMGeneratingEvaluating2024.md), which perform a specific task
- Test on `I2C` and `rv-timer`
- I am assuming that the number of assertions generated are all correct as I cannot find the correct %
- The have listed the following coverage metrics
	- Branch
	- Property
	- Toggle
- They used Deepseek-R1
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-yellow">"industry-level specifications"</mark> [Page 180](zotero://open-pdf/library/items/UMPDAM9U?page=180&annotation=8X56WNTG)


 <mark class="hltr hltr-purple">"I. INTRODUCTION"</mark> [Page 180](zotero://open-pdf/library/items/UMPDAM9U?page=180&annotation=G344RDJR)


 <mark class="hltr hltr-yellow">"It involves three custom LLMs: Spec Analyzer, Signal Mapper, and Waveform Analyzer."</mark> [Page 180](zotero://open-pdf/library/items/UMPDAM9U?page=180&annotation=WF6DFEY3)


 <mark class="hltr hltr-purple">"II. BACKGROUND AND RELATED WORKS"</mark> [Page 180](zotero://open-pdf/library/items/UMPDAM9U?page=180&annotation=CUUMDPYG)


 <mark class="hltr hltr-purple">"B. LLM for Assertion Generation"</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=VFZIECQW)


 <mark class="hltr hltr-blue">"The authors of [13] have generated hardware security assertions using LLM and also contributed to providing a comprehensive benchmark suite consisting of real-world hardware designs and corresponding golden assertions."</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=82FDRXAA)


 <mark class="hltr hltr-purple">"C. Monte Carlo Tree Search (MCTS)"</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=ET3XRFEZ)


 <mark class="hltr hltr-yellow">"open-source DeepSeek-R1 model"</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=XBZAJLYA)


 <mark class="hltr hltr-purple">"III. SANGAM"</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=PRRSXKY6)


 <mark class="hltr hltr-purple">"A. Stage 1: Specification Processing"</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=A4ZRARKE)


 <mark class="hltr hltr-yellow">"This stage involves the utilization of three different LLMs for specification processing. They are: Signal Mapper, Spec Analyzer, and Waveform Analyzer."</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=2CKXA7ZF)


 <mark class="hltr hltr-yellow">"The design specification file is provided as an input file to the LLM in PDF format."</mark> [Page 181](zotero://open-pdf/library/items/UMPDAM9U?page=181&annotation=SY7RF5A3)


 <mark class="hltr hltr-purple">"B. Stage 2: Assertion Generation"</mark> [Page 182](zotero://open-pdf/library/items/UMPDAM9U?page=182&annotation=HL4ZH3L3)


 <mark class="hltr hltr-purple">"C. Stage 3: Assertion Combination"</mark> [Page 183](zotero://open-pdf/library/items/UMPDAM9U?page=183&annotation=SIRAUVF7)


 <mark class="hltr hltr-purple">"IV. EXPERIMENTATION, RESULTS AND DISCUSSION"</mark> [Page 183](zotero://open-pdf/library/items/UMPDAM9U?page=183&annotation=UIEVHFUC)


 <mark class="hltr hltr-yellow">"nter-Integrated Circuit (I2C), and RISC-V Timer (RV-Timer) to compare our results with the state-of-the-art methods, AssertLLM [12] and ChIRAAG [2]. We have used the DeepSeek-R1 model to create all the LLM agents for experimentation."</mark> [Page 183](zotero://open-pdf/library/items/UMPDAM9U?page=183&annotation=AXIMNJ9G)


 <mark class="hltr hltr-purple">"A. Implementation Details"</mark> [Page 184](zotero://open-pdf/library/items/UMPDAM9U?page=184&annotation=J728GJ4W)


 <mark class="hltr hltr-purple">"B. Results and Discussion"</mark> [Page 184](zotero://open-pdf/library/items/UMPDAM9U?page=184&annotation=CBP77AKQ)


 <mark class="hltr hltr-yellow">"Coverage Application."</mark> [Page 184](zotero://open-pdf/library/items/UMPDAM9U?page=184&annotation=FK5UQLIB)


 <mark class="hltr hltr-purple">"V. CONCLUSION AND FUTURE WORK"</mark> [Page 185](zotero://open-pdf/library/items/UMPDAM9U?page=185&annotation=2SZCSKGU)




%% Import Date: 2026-01-02T17:15:34.251-05:00 %%
