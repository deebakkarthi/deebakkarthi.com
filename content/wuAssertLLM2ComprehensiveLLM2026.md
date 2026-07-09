---
title:  "AssertLLM2: A Comprehensive LLM Benchmark for Assertion Generation from Design Specifications"
date: 2026-07-09T15:39:59-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2026</dd>
<dt>Authors</dt>
<dd>Yuchao Wu, Wenji Fang, Jing Wang, Wenkai Li, Ziyan Guo, Zhiyao Xie</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.48550/arXiv.2605.27472">10.48550/arXiv.2605.27472</a></dd>
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

 <mark class="hltr hltr-purple">"Abstract"</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=LXT8S3Y4)


 <mark class="hltr hltr-yellow">"AssertLLM2 contains 83 real-world designs across 13 functional categories."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=N7SA4EZ8)

Opencores mostly [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=N7SA4EZ8)


 <mark class="hltr hltr-yellow">"To the best of our knowledge, AssertLLM2 is the first benchmark to explicitly use buggy RTL as input to evaluate bug-detection capability."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=2ETWQX95)


 <mark class="hltr hltr-purple">"1 Introduction"</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=2R59FDMV)




Shortcomings of previous work [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=YBAE6BKV)


 <mark class="hltr hltr-yellow">"Limitation 1: Unrealistic formulation."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=YCN2RPF6)


 <mark class="hltr hltr-yellow">"Limitation 2: Oversimplified evaluation."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=4R4D6GJQ)


 <mark class="hltr hltr-yellow">"largely focus on syntax and FPV results when evaluating generated assertions."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=6X77J97K)

We know that this is not enough [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=6X77J97K)


 <mark class="hltr hltr-green">"parsed and proven, but they can not determine whether those assertions constrain relevant logic, improve meaningful formal coverage, or detect design errors. In other words, assertions that are syntactically correct and formally provable may still be trivial, vacuous, or weak in practical verification. Consequently, relying on existing benchmarks can overestimate both assertion quality and the practical utility of LLM-generated assertions."</mark> [Page 1](zotero://open-pdf/library/items/2XEE5X5W?page=1&annotation=PW8CTU3D)




These are some nitpicks about the table comparing previous works [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=BZQAAQHN)


 <mark class="hltr hltr-red">"Dataset"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=MHZZ69JH)

What does dataset indicate here? VERT and AssertLLM are finetuned models. While FVEval is a benchmark. Is dataset indicative of the training dataset used or the testing designs employed by the benchmarks? [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=MHZZ69JH)


 <mark class="hltr hltr-red">"VERT"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=WRM3LBXF)

The merely test their approach on OpenTitan, CVA6, Pulpissimo, OpenPiton. They didn't say that this was a benchmark and of itself. [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=WRM3LBXF)


 <mark class="hltr hltr-red">"20000"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=MZUIRE4S)

They don't test on 20000 designs. They test on like 16. Their benchmark is completely different. [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=MZUIRE4S)


 <mark class="hltr hltr-yellow">"Limitation 3: Limited design scale and specification quality"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=R8R7BZNN)

They have left out assertionbench here. But when we look at the plot we see that assertionbench is much much smaller than assertllm2, even though they both use free/opencores. For some reason assertionbench decided to just pick the first two categories and call it a day. they could have easily used the others too. But this is a noticeable improvement. Having 12 arithmetic cores isn't really saying that much [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=R8R7BZNN)


 <mark class="hltr hltr-yellow">"Most prior benchmarks [16, 17] focus on small module-level designs, rather than the larger and more complex IPlevel designs encountered in practice. The only benchmark targeting a larger-scale setting [18]"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=M33AEP57)

FVEval and CVDP (Nvidia papers) have bite sized files. Both of these works target more than just assertion generation. That is why when we look at just assertion generation, we find that they are either too small or too few. [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=M33AEP57)




How AssertLLM2 alleviates the previously mentioned shortcomings [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=UCK88838)


 <mark class="hltr hltr-yellow">"❶ More complete and realistic task formulation."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=N983264N)


 <mark class="hltr hltr-magenta">"The first is bug-prevention. This scenario reflects the stage where RTL is still under development. Assertions are generated from the specification alone to capture intended behavior and help prevent design errors early. The second is bug-hunting. This scenario reflects the stage where RTL has been implemented but is not yet fully verified, and may therefore still contain functional bugs."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=BYPYTFHL)

Need more sources about the typical workflow in FV [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=BYPYTFHL)


 <mark class="hltr hltr-yellow">"Assertions are generated from the specification together with the RTL to test whether they can expose mismatches between intended behavior and implementation behavior."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=3566PJ3J)


 <mark class="hltr hltr-yellow">"AssertLLM2 is the first benchmark to explicitly use buggy RTL as input to evaluate bug-detection capability."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=DEVXQ2VQ)


 <mark class="hltr hltr-yellow">"More rigorous evaluation"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=LALZZWSC)


 <mark class="hltr hltr-green">"Beyond syntax and FPV, it evaluates COI coverage, proof coverage, formal coverage, and mutation-based bug detection."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=TFIMZD47)


 <mark class="hltr hltr-yellow">"❸ Richer and more realistic designs and specifications"</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=H8BJZAQ9)


 <mark class="hltr hltr-yellow">"structured textual specification, the raw PDF, a verified golden RTL reference, and systematically mutated buggy RTL variants."</mark> [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=733S553R)

Each benchmark contains the above [Page 2](zotero://open-pdf/library/items/2XEE5X5W?page=2&annotation=733S553R)


 <mark class="hltr hltr-purple">"2 Problem Formulation"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=DC9WBST3)

I hate contrived formulas
LLMs cannot be a function. A function by definition has to map to the same output every time when evaluated with some input. [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=DC9WBST3)


 <mark class="hltr hltr-purple">"3 Benchmark Data Overview"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=4QQ493VY)


 <mark class="hltr hltr-yellow">"AssertLLM2 comprises 83 real-world designs spanning 13 functional categories"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=Z9QQ3NGI)


 <mark class="hltr hltr-yellow">"AssertLLM2 also stands out from prior benchmarks in the scale of its designs."</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=JB8DU2U5)


 <mark class="hltr hltr-yellow">"The buggy RTL variants include 20 single-bug variants and one five-bug variant obtained by combining five single-bug variants"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=6P6NWG5V)


 <mark class="hltr hltr-red">"realistic faulty design"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=SC259LAJ)

I don't know if it is realistic. It is faulty. What do we mean by "realistic"? Are the faults indicative of common errors humans make? How did they find the common errors humans make? [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=SC259LAJ)


 <mark class="hltr hltr-purple">"4 Benchmark Data Construction"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=YXPL4HCJ)


 <mark class="hltr hltr-purple">"4.1 Data Collection"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=XNG2ZF4N)

Collect designs from free/opencores, spinalHDL and RISC-mcu [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=XNG2ZF4N)


 <mark class="hltr hltr-yellow">"Finally, we require at least 200 lines of RTL code to filter out trivial designs."</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=R9MKHVST)


 <mark class="hltr hltr-purple">"4.2 Structured Specification Construction"</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=76LEHECE)

Convert PDFs to plain text. They have a standardized template. [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=76LEHECE)


 <mark class="hltr hltr-green">"This makes the documents difficult to use directly and creates a multimodal bottleneck for purely text-based open-source LLMs."</mark> [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=JB3A58KE)

This is one of the points I have against spec+RTL. First of all we need spec which may not be always available. Second we need to convert that into a pure text format. What do we do about images? I know that LLMs can handle images and under the hood, there isn't really a difference (the LLM only sees a token, doesn't really care where it came from) but the sheer amount of text and the relations you can make with them nudge towards avoiding images. [Page 3](zotero://open-pdf/library/items/2XEE5X5W?page=3&annotation=JB3A58KE)


 <mark class="hltr hltr-magenta">"SPEC Tokens"</mark> [Page 4](zotero://open-pdf/library/items/2XEE5X5W?page=4&annotation=XDA7TNUI)

How are they measuring the number of tokens? tiktokenizer? [Page 4](zotero://open-pdf/library/items/2XEE5X5W?page=4&annotation=XDA7TNUI)


 <mark class="hltr hltr-red">"Finally, human experts review the draft against the original documentation at the clause level. The resulting structured specification is therefore a curated and human-validated benchmark artifact."</mark> [Page 4](zotero://open-pdf/library/items/2XEE5X5W?page=4&annotation=EDQD6S94)

Human in the loop [Page 4](zotero://open-pdf/library/items/2XEE5X5W?page=4&annotation=EDQD6S94)




These are the mutations. They seem reasonable but I still feel icky about these being the bugs. What about logical errors? These are more like careless mistakes. I honestly don't think a designer is missing an if branch. Maybe these are useful for a lint tool but the kinds of bugs we are looking for in formal are much deeper. I feel like all of these bugs can be revealed by just simulation. Formal bugs reveal a fundamental error in logic, in most cases. [Page 5](zotero://open-pdf/library/items/2XEE5X5W?page=5&annotation=IEN7P94F)

![[assets/zimage-wuAssertLLM2ComprehensiveLLM2026-5-x70-y489.png]]

 <mark class="hltr hltr-purple">"4.3 Mutation-Based Buggy RTL Generation"</mark> [Page 5](zotero://open-pdf/library/items/2XEE5X5W?page=5&annotation=E86FTQCJ)

How is this different from the mutation coverage by Jasper? It can operate on the much deeper level by changing the states? Idk how it works under the hood but I do know that jasper offers a way to do this. [Page 5](zotero://open-pdf/library/items/2XEE5X5W?page=5&annotation=E86FTQCJ)


 <mark class="hltr hltr-yellow">"Each buggy RTL is required to pass a JasperGold check and to differ functionally from the original RTL, which removes invalid or equivalent mutants"</mark> [Page 5](zotero://open-pdf/library/items/2XEE5X5W?page=5&annotation=MU3I4E55)


 <mark class="hltr hltr-purple">"5 Benchmark Evaluation Framework"</mark> [Page 6](zotero://open-pdf/library/items/2XEE5X5W?page=6&annotation=HJCKQBVQ)


 <mark class="hltr hltr-yellow">"Unlike prior work, which typically evaluates assertion generation in only a single scenario, our framework supports both bugprevention and bug-hunting"</mark> [Page 6](zotero://open-pdf/library/items/2XEE5X5W?page=6&annotation=X4X54VVN)


 <mark class="hltr hltr-purple">"6 Experimental Results"</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=UV7N92TA)


 <mark class="hltr hltr-purple">"6.1 Experimental Setup"</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=86SCRNVD)


 <mark class="hltr hltr-yellow">"FEC"</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=N8WUJFUH)

Functional Equivalence Checking ? I think this is to make sure the mutants are different things [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=N8WUJFUH)


 <mark class="hltr hltr-yellow">"esults are reported in two forms: average and union."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=K2RE6K6Q)


 <mark class="hltr hltr-yellow">"The union result serves as an additional view, obtained by merging the assertions from all three runs into a single set and evaluating that merged set in the same way as a standard output. This captures the cumulative value of multiple generations, as different runs may cover different parts of the design or expose different faulty variants."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=GTD2RRBN)


 <mark class="hltr hltr-purple">"6.2 Overall Benchmark Results."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=RNBUUK6G)


 <mark class="hltr hltr-yellow">"However, AssertLLM2 shows that strong syntax success, basic provability, and broad structural reach do not translate into equally strong proof coverage or bug detection capability. Proof coverage remains much lower than COI coverage, and the bug kill ratio is disproportionately low, peaking only in the high-20% range even under the union setting."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=SNVPSD3I)


 <mark class="hltr hltr-yellow">"GPT5.2 is more precision-oriented, generating fewer but more reliable assertions, whereas Claude-Sonnet-4.5 is more exploratory."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=VP7KMFQ3)


 <mark class="hltr hltr-purple">"6.3 Detailed Results on Selected Designs."</mark> [Page 7](zotero://open-pdf/library/items/2XEE5X5W?page=7&annotation=S6JXJVNW)


 <mark class="hltr hltr-purple">"7 Conclusion"</mark> [Page 9](zotero://open-pdf/library/items/2XEE5X5W?page=9&annotation=9TXM7HIA)


 <mark class="hltr hltr-yellow">"Our empirical study shows that, although current LLMs can often produce syntactically valid assertions, their practical verification value remains limited and highly uneven across designs and evaluation metrics."</mark> [Page 9](zotero://open-pdf/library/items/2XEE5X5W?page=9&annotation=KI9E3ZCF)




%% Import Date: 2026-07-09T15:40:01.894-04:00 %%
