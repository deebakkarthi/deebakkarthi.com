---
title:  "ChatSVA: Bridging SVA Generation for Hardware Verification via Task-Specific LLMs"
date: 2026-06-30T18:15:27-04:00
tags:
mathjax: true
---

---

<dl>
<dt>Year</dt>
<dd>2026</dd>
<dt>Authors</dt>
<dd>Lik Tung Fu, Jie Zhou, Shaokai Ren, Mengli Zhang, Jia Xiong, Hugo Jiang, Nan Guan, Xi Wang, Jun Yang</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1145/3770743.3804146">10.1145/3770743.3804146</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
# Quick Summary
- Single pass is the way to go when performing assertion generation
- Introduce a multi-agent approach
	- ChatSVA is a combination of GPT-4o and 4 LLama-3.1 finetuned models.
	- AgentBridge is a framework to generate the data on which the above models will be trained on.
- Evaluated theirs on FIXME and found it to outperformed GPT-4o and Deepseek R1
# Criticisms
## Using older models
- GPT-4o was released in May 2024
- DeepSeek R1 was released in January 2025
- DAC '26 deadline was March 6, 2026
- The models aren't **SOTA** by any measure.
- o1, 4.5, 4.1, o3, 5, 5.1, 5.2, 5.3 were all released before the DAC deadline
- Running FIXME on these could have easily been done
## FIXME
- FIXME isn't available publicly we don't know how it actually is
## Agent
- Their use of the word *agent* is misleading. As far as I know, agent implies a hierarchy of models possibly working in parallel. Their architecture seems like a mixture of different fine tuned models that work in series. No model controls another one and there are **no loops**.
## Math 
- We don't know where $D_{gold}$ comes from. We also don't know anything about the prompts that they use to generate these. It is very vague.
- Functional coverage is not defined anywhere
- Equation 4 seems too trivial to be included. $100\%$ is just 1. Then the equation essentially describes taking the average. I don't understand why they needed to call this *General Pass Rate* and even give it an equation.
- Section 5 has a bunch of math-y formula but we don't have any explanation of $\mathcal{G}$.
- We don't see the bug types that they are attempting to hunt
# Confused about
- They say that RTL induces bugs into the assertions. While this is technically true, we heard from brad that it is standard practice to derive assertions from implementations. I cannot remember the reference for this off the top of my head but even proven assertions about faulty behavior can help the designer catch the bug. For example, if $G(A)$ is extracted and proven then it implies a stuck at. This immediately draws the attention of a VE compared to perusing the code base.
- Do we need separate agents1-4? Does fine-tuning a model with all the 4 kinds of prompts decrease performance? An LLM usually is fine-tuned on so many different kinds of prompts that adding 4 more is not an issue. I'm not sure if agent1-4 are a single model or multiple. I'm assuming multiple because they gave them different numbers.
# Agree
- A single pass approach limits our ability to scale and doesn't take full advantage of the model. We are limited by the no-shot capabilities of the model in this approach.
- We need something more than that. But their approach is just splitting the "cognitive" load into separate chat sessions. While this certain helps, I was imagining a loop of some sorts when I heard saw the word "agent".
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-yellow">"multi-agent framework"</mark> [Page 1](zotero://open-pdf/library/items/7AXPEVBV?page=1&annotation=CWAW2TFG)


 <mark class="hltr hltr-yellow">"Evaluated on 24 RTL designs, ChatSVA achieves 98.66% syntax and 96.12% functional pass rates, generating 139.5 SVAs per design with 82.50% function coverage. This represents a 33.3 percentage point improvement in functional correctness and an over 11× enhancement in function coverage compared to the previous state-of-the-art (SOTA)."</mark> [Page 1](zotero://open-pdf/library/items/7AXPEVBV?page=1&annotation=HJMN9PSU)


 <mark class="hltr hltr-yellow">"Current research has rapidly converged on two main strategies: (1) augmenting general-purpose models with prompt engineering or RAG [3, 16, 22, 23, 36], and (2) fine-tuning smaller models with domain-specific data [2, 20, 26, 28]."</mark> [Page 2](zotero://open-pdf/library/items/7AXPEVBV?page=2&annotation=I8448UFH)


 <mark class="hltr hltr-yellow">"Most approaches treat SVA generation as a single-step translation from Spec to code"</mark> [Page 2](zotero://open-pdf/library/items/7AXPEVBV?page=2&annotation=LH8V4L93)


 <mark class="hltr hltr-yellow">"Furthermore, this methodological weakness is compounded by a risky practice: using the RTL code itself as an input to guide generation [3, 16, 22]. This introduces “verification contamination”, where the model may learn and replicate existing design flaws, undermining the very purpose of verification"</mark> [Page 2](zotero://open-pdf/library/items/7AXPEVBV?page=2&annotation=5Z35M5GM)


 <mark class="hltr hltr-yellow">"This single-step approach forces models to prioritize syntactic correctness over functional efficacy, as it lacks the intermediate steps to reason about complex design intent. This forces a single, unguided inferential leap, making LLMs prone to “functional hallucinations”, generating SVAs that are syntactically valid but functionally incorrect"</mark> [Page 2](zotero://open-pdf/library/items/7AXPEVBV?page=2&annotation=43SFNHI5)


 <mark class="hltr hltr-yellow">"S1 directly targets C2 and C1 by decomposing the monolithic task into a pipeline of modular sub-tasks. This provides the intermediate reasoning steps C2 identifies as missing, shifting the focus from syntactic correctness to functional intent."</mark> [Page 3](zotero://open-pdf/library/items/7AXPEVBV?page=3&annotation=8KB4NY9L)


 <mark class="hltr hltr-yellow">"A complete Spec should encompass functional descriptions, input and output ports, internal register mappings, and the temporal behavior of internal signals."</mark> [Page 3](zotero://open-pdf/library/items/7AXPEVBV?page=3&annotation=35XBAD62)


 <mark class="hltr hltr-yellow">"addresses the data scarcity challenge in SVA generation."</mark> [Page 3](zotero://open-pdf/library/items/7AXPEVBV?page=3&annotation=3QQUGTTE)


 <mark class="hltr hltr-yellow">"AgentBridge is built upon three foundational principles that guide its data synthesis process."</mark> [Page 3](zotero://open-pdf/library/items/7AXPEVBV?page=3&annotation=DPZ8EYJH)


 <mark class="hltr hltr-yellow">"three principles."</mark> [Page 4](zotero://open-pdf/library/items/7AXPEVBV?page=4&annotation=QLR8BY3N)


 <mark class="hltr hltr-yellow">"Directional Information Constraint."</mark> [Page 4](zotero://open-pdf/library/items/7AXPEVBV?page=4&annotation=HFCJM7XP)


 <mark class="hltr hltr-magenta">"G"</mark> [Page 4](zotero://open-pdf/library/items/7AXPEVBV?page=4&annotation=5SSBRPXE)


 <mark class="hltr hltr-yellow">"Ground Truth Provenance"</mark> [Page 4](zotero://open-pdf/library/items/7AXPEVBV?page=4&annotation=2XMD49ZS)


 <mark class="hltr hltr-yellow">"Output Verifiability"</mark> [Page 4](zotero://open-pdf/library/items/7AXPEVBV?page=4&annotation=4ESKFE72)


 <mark class="hltr hltr-yellow">"We evaluate ChatSVA against general-purpose models (GPT-4o, DeepSeek-R1) and AssertLLM [36]. AssertLLM is selected as the primary SOTA baseline as it is also a multi-agent framework that generates SVAs from Spec, making it a direct counterpart to our approach"</mark> [Page 5](zotero://open-pdf/library/items/7AXPEVBV?page=5&annotation=GGZWTMBB)


 <mark class="hltr hltr-yellow">"All methods are evaluated on the FIXME benchmark [31], a comprehensive public test set featuring diverse industrial designs (e.g., CPUs, GPUs, IPs)."</mark> [Page 5](zotero://open-pdf/library/items/7AXPEVBV?page=5&annotation=RBSQ8TXX)


 <mark class="hltr hltr-yellow">"Function Coverage evaluates the bugdetection capability of functionally correct SVAs against predefined bug types. (Protocol Violations, Illegal Branch, etc.)"</mark> [Page 5](zotero://open-pdf/library/items/7AXPEVBV?page=5&annotation=KXD3CKCR)




%% Import Date: 2026-06-30T18:15:29.474-04:00 %%
