---
title:  "Comprehensive Verilog Design Problems: A Next-Generation Benchmark Dataset for Evaluating Large Language Models and Agents on RTL Design and Verification"
date: 2026-07-11T13:48:46-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2025</dd>
<dt>Authors</dt>
<dd>Nathaniel Pinckney, Chenhui Deng, Chia-Tung Ho, Yun-Da Tsai, Mingjie Liu, Wenfei Zhou, Brucek Khailany, Haoxing Ren</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2506.14074">10.48550/arXiv.2506.14074</a></dd>
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

 <mark class="hltr hltr-yellow">"However, these benchmarks are narrow in scope and do not reflect the full complexity of hardware development workflows. Moreover, their high pass rates leave little headroom for measuring future improvements, limiting their usefulness as research drivers."</mark> [Page 2](zotero://open-pdf/library/items/XDS6NLSL?page=2&annotation=87MNGTV4)


 <mark class="hltr hltr-yellow">"Instead, we engaged a team of approximately 35 hardware engineers with more than 4 years of Verilog and verification experience to author problems across 13 task categories and difficulty levels, in both Non-Agentic and Agentic formats."</mark> [Page 3](zotero://open-pdf/library/items/XDS6NLSL?page=3&annotation=EFHTC7QJ)


 <mark class="hltr hltr-yellow">"Each datapoint, or “problem,” represents a multi-file repository extracted at evaluation time. A test harness—typically a CocoTB (CocoTB [2025]) simulation script—assesses correctness based on task type. CocoTB is a Python verification framework for testing RTL, and helps to automate the test harness. BLEU (Papineni et al. [2002]) scoring is used where code or natural language snippets are expected verbatim, while technical natural language answers are scored using LLM-based subjective judging."</mark> [Page 3](zotero://open-pdf/library/items/XDS6NLSL?page=3&annotation=L8GPFEHK)


 <mark class="hltr hltr-yellow">"Design verification categories—specifically testbench stimulus and checker generation (cid12–13) and assertion generation (cid14)—exhibit substantially lower pass rates compared to other code generation categories. This is examined in more detail in Section 5. Notably, state-of-the-art LLMs consistently struggle to generate even syntactically valid testbench code, despite it being written in the same hardware description language (SystemVerilog) as the RTL code generation tasks. This discrepancy may stem from the more procedural and imperative nature of testbench code, as opposed to the declarative structure typical of RTL logic."</mark> [Page 5](zotero://open-pdf/library/items/XDS6NLSL?page=5&annotation=C7QRJBI9)


 <mark class="hltr hltr-yellow">"cid14  Llama 3.1 405B 11.00% 89 2 Misplaced SVA;Operator Errors 60.67% Claude 3.7 Sonnet 25.00% 75 2 Flawed Timing;Syntax Mismatch 58.67% GPT 4.1 13.00% 87 2 Procedural Blocks;Syntax Deviations 58.62%"</mark> [Page 8](zotero://open-pdf/library/items/XDS6NLSL?page=8&annotation=74YAZRDS)




%% Import Date: 2026-07-11T13:48:53.177-04:00 %%
