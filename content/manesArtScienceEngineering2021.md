---
title:  "The Art, Science, and Engineering of Fuzzing: A Survey"
date: 2026-02-02T11:03:19-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2021</dd>
<dt>Authors</dt>
<dd>Valentin J.M. Manes, HyungSeok Han, Choongwoo Han, Sang Kil Cha, Manuel Egele, Edward J. Schwartz, Maverick Woo</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1109/TSE.2019.2946563">10.1109/TSE.2019.2946563</a></dd>
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

 <mark class="hltr hltr-purple">"1 INTRODUCTION"</mark> [Page 1](zotero://open-pdf/library/items/BTZB38T9?page=1&annotation=IE6BTJL8)


 <mark class="hltr hltr-orange">"At a high level, fuzzing refers to a process of repeatedly running a program with generated inputs that may be syntactically or semantically malformed."</mark> [Page 1](zotero://open-pdf/library/items/BTZB38T9?page=1&annotation=YJU4DCCW)


 <mark class="hltr hltr-yellow">"Furthermore, there has been an observable fragmentation in the terminology used by various fuzzers."</mark> [Page 1](zotero://open-pdf/library/items/BTZB38T9?page=1&annotation=578VCEWS)


 <mark class="hltr hltr-purple">"2 SYSTEMIZATION, TAXONOMY, AND TEST PROGRAMS"</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=5EXZXYIZ)


 <mark class="hltr hltr-orange">"generates a stream of random characters to be consumed by a target program"</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=DTB9488J)

OG definition [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=DTB9488J)


 <mark class="hltr hltr-purple">"2.1 Fuzzing & Fuzz Testing"</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=VSTTI38X)


 <mark class="hltr hltr-orange">"Fuzzing is the execution of the PUT using input(s) sampled from an input space (the “fuzz input space”) that protrudes the expected input space of the PUT."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=2FAZ4WYP)


 <mark class="hltr hltr-yellow">"Third, the sampling process is not necessarily randomized, as we will see in §5."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=8B4FDN75)


 <mark class="hltr hltr-orange">"Fuzz testing is the use of fuzzing to test if a PUT violates a correctness policy"</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=DMLSWTJ9)


 <mark class="hltr hltr-orange">"A fuzzer is a program that performs fuzz testing on a PUT."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=R4RE7GAL)


 <mark class="hltr hltr-orange">"A fuzz campaign is a specific execution of a fuzzer on a PUT with a specific correctness policy."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=FADXZA2W)


 <mark class="hltr hltr-yellow">"For example, a correctness policy employed by early fuzzers tested only whether a generated input—the test casecrashed the PUT. However, fuzz testing can actually be used to test any policy observable from an execution, i.e., EM-enforceable [190]."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=YJSGCMWA)

This is how the OG paper defined correctness [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=YJSGCMWA)


 <mark class="hltr hltr-orange">"A bug oracle is a program, perhaps as part of a fuzzer, that determines whether a given execution of the PUT violates a specific correctness policy."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=M4YIBVC7)


 <mark class="hltr hltr-yellow">"For instance, PerfFuzz [140] looks for inputs that reveal performance problems."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=WPJK66P3)


 <mark class="hltr hltr-orange">"A fuzz configuration of a fuzz algorithm comprises the parameter value(s) that control(s) the fuzz algorithm."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=8BYL3KZZ)

May be simple or complex depending on the algorithm. [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=8BYL3KZZ)


 <mark class="hltr hltr-orange">"A seed is a (commonly well-structured) input to the PUT, used to generate test cases by modifying it."</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=JLS2T7XS)


 <mark class="hltr hltr-purple">"2.2 Paper Selection Criteria"</mark> [Page 2](zotero://open-pdf/library/items/BTZB38T9?page=2&annotation=JW9GBTYT)


 <mark class="hltr hltr-purple">"2.3 Fuzz Testing Algorithm"</mark> [Page 3](zotero://open-pdf/library/items/BTZB38T9?page=3&annotation=GJLBUK42)


 <mark class="hltr hltr-yellow">"The first part is the PR E P R O C E S S function, which is executed at the beginning of a fuzz campaign. The second part is a series of five functions inside a loop: SC H E D U L E, IN P U TGE N,  IN P U TEV A L, CO N FUP D A T E, and CO N T I N U E. Each execution  of this loop is called a fuzz iteration and each time IN P U TEV A L executes the PUT on a test case is called a fuzz run."</mark> [Page 3](zotero://open-pdf/library/items/BTZB38T9?page=3&annotation=Z4RR2JMS)


 <mark class="hltr hltr-purple">"2.4 Taxonomy of Fuzzers"</mark> [Page 3](zotero://open-pdf/library/items/BTZB38T9?page=3&annotation=WDI4MHUQ)


 <mark class="hltr hltr-purple">"2.4.1 Black-box Fuzzer"</mark> [Page 3](zotero://open-pdf/library/items/BTZB38T9?page=3&annotation=JL3U54Z3)


 <mark class="hltr hltr-yellow">"The term “black-box” is commonly used in software testing [164], [35] and fuzzing to denote techniques that do not see the internals of the PUT—these techniques can observe only the input/output behavior of the PUT, treating it as a black-box. In software testing, black-box testing is also called IO-driven or data-driven testing"</mark> [Page 3](zotero://open-pdf/library/items/BTZB38T9?page=3&annotation=2PKDRJSJ)


 <mark class="hltr hltr-purple">"2.4.2 White-box Fuzzer"</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=YBZTYU3U)


 <mark class="hltr hltr-yellow">"At the other extreme of the spectrum, white-box fuzzing [93] generates test cases by analyzing the internals of the PUT and the information gathered when executing the PUT."</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=4GKCAKUE)


 <mark class="hltr hltr-yellow">"While DSE is an active research area [93], [91], [41], [179], [116], works in DSE generally do not claim to be about white-box fuzzing and so we did not include many such works."</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=YDHG4VK9)


 <mark class="hltr hltr-purple">"2.4.3 Grey-box Fuzzer"</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=S8FIBT4C)


 <mark class="hltr hltr-yellow">"Some fuzzers [81], [71], [214] take a middle ground approach dubbed grey-box fuzzing. In general, grey-box fuzzers can obtain some information internal to the PUT and/or its executions."</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=KNVC4Z3H)


 <mark class="hltr hltr-yellow">"Although there usually is some consensus among security experts, the distinction among black-, greyand white-box fuzzing is not always clear."</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=K5XN6J2A)


 <mark class="hltr hltr-purple">"2.5 Fuzzer Genealogy and Overview"</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=29XN6ZAK)


 <mark class="hltr hltr-purple">"3 PREPROCESS"</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=BDCBKGSC)


 <mark class="hltr hltr-purple">"3.1 Instrumentation"</mark> [Page 4](zotero://open-pdf/library/items/BTZB38T9?page=4&annotation=K8BCCB5R)


 <mark class="hltr hltr-purple">"3.1.1 Execution Feedback"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=Q2V6SJRX)


 <mark class="hltr hltr-purple">"3.1.2 Thread Scheduling"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=NUK97MJD)


 <mark class="hltr hltr-yellow">"However, instrumentation can also be used to trigger different non-deterministic program behaviors by explicitly controlling how threads are scheduled"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=MRM76LYX)


 <mark class="hltr hltr-yellow">"Existing work has shown that even randomly scheduling threads can be effective at finding race condition bugs"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=JXYFMDEN)


 <mark class="hltr hltr-purple">"3.1.3 In-Memory Fuzzing"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=MVGIMQFT)


 <mark class="hltr hltr-yellow">"When testing a large program, it is sometimes desirable to fuzz only a portion of the PUT without re-spawning a process for each fuzz iteration in order to minimize execution"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=5NSCN89L)


 <mark class="hltr hltr-yellow">"Some fuzzers [9], [241] perform in-memory fuzzing on a function without restoring the state of the PUT after each iteration. We call such a technique in-memory API fuzzing."</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=ZQVICJKU)


 <mark class="hltr hltr-yellow">"Although efficient, in-memory API fuzzing suffers from unsound fuzzing results: bugs (or crashes) found with inmemory fuzzing may not be reproducible, because (1) it is not always feasible to construct a valid calling context for the target function, and (2) there can be side-effects that are not captured across multiple function calls."</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=2CZJSQNR)


 <mark class="hltr hltr-purple">"3.2 Seed Selection"</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=DBYALTGD)


 <mark class="hltr hltr-yellow">"A common approach, which is known as minset, finds a minimal set of seeds that maximizes a coverage metric such as node coverage."</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=UZ6H6K42)


 <mark class="hltr hltr-yellow">"For example, AFL’s minset is based on branch coverage with a logarithmic counter on each branch."</mark> [Page 7](zotero://open-pdf/library/items/BTZB38T9?page=7&annotation=TJ93JY5T)


 <mark class="hltr hltr-purple">"3.3 Seed Trimming"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=E6BECHXM)


 <mark class="hltr hltr-yellow">"Smaller seeds are likely to consume less memory and entail higher throughput. Therefore, some fuzzers attempt to reduce the size of seeds prior to fuzzing them, which is called seed trimming."</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=9E5QVQC9)


 <mark class="hltr hltr-purple">"3.4 Preparing a Driver Application"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=QHH7RANA)


 <mark class="hltr hltr-purple">"4 SCHEDULING"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=8Z92WL2B)


 <mark class="hltr hltr-purple">"4.1 The Fuzz Configuration Scheduling (FCS) Problem"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=VCMCFINJ)


 <mark class="hltr hltr-yellow">"Fundamentally, every scheduling algorithm confronts with the same exploration vs. exploitation conflict"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=8J8DPD3K)


 <mark class="hltr hltr-yellow">"Woo et al. [235] dubbed this inherent conflict the Fuzz Configuration Scheduling (FCS) Problem."</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=2BXH8SX4)


 <mark class="hltr hltr-purple">"4.2 Black-box FCS Algorithms"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=V424FFAB)


 <mark class="hltr hltr-yellow">"Weighted Coupon Collector’s Problem with Unknown Weights"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=WYR58JJD)


 <mark class="hltr hltr-yellow">"multi-armed bandit ("</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=CC7DVSC5)


 <mark class="hltr hltr-purple">"4.3 Grey-box FCS Algorithms"</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=BATVAKUD)


 <mark class="hltr hltr-yellow">"the coverage attained when fuzzing a configuration. AFL [241] is the forerunner in this category and it is based on an evolutionary algorithm (EA)."</mark> [Page 8](zotero://open-pdf/library/items/BTZB38T9?page=8&annotation=ICX4EHMZ)


 <mark class="hltr hltr-purple">"5 INPUT GENERATION"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=SDUV7AJW)


 <mark class="hltr hltr-yellow">"Traditionally, fuzzers are categorized into either generation- or mutation-based fuzzers"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=3PGCSAQ9)


 <mark class="hltr hltr-yellow">"model-based"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=4WI2GIXI)

Generation Based [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=4WI2GIXI)


 <mark class="hltr hltr-yellow">"model-less"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=QU9WGP7N)

Mutation based [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=QU9WGP7N)


 <mark class="hltr hltr-purple">"5.1 Model-based (Generation-based) Fuzzers"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=DE6DK3X4)


 <mark class="hltr hltr-purple">"5.1.1 Predefined Model"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=9RIWTPVK)


 <mark class="hltr hltr-yellow">"Some fuzzers use a model that can be configured by the user."</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=ZJNQIY5T)


 <mark class="hltr hltr-yellow">"Other model-based fuzzers target a specific language or grammar, and the model of this language is built into the fuzzer itself."</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=XI26438D)


 <mark class="hltr hltr-purple">"5.1.2 Inferred Model"</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=PKUVS9IF)


 <mark class="hltr hltr-yellow">"Inferring the model rather than relying on a predefined or user-provided model has recently been gaining traction."</mark> [Page 9](zotero://open-pdf/library/items/BTZB38T9?page=9&annotation=5ZWQNDAS)


 <mark class="hltr hltr-purple">"5.1.3 Encoder Model"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=EW7U4IAI)


 <mark class="hltr hltr-yellow">"Fuzzing is often used to test decoder programs which parse a certain file format. Many file formats have corresponding encoder programs, which can be thought of as an implicit model of the file format."</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=WPXTN8HI)


 <mark class="hltr hltr-purple">"5.2 Model-less (Mutation-based) Fuzzers"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=N5AEYDHG)


 <mark class="hltr hltr-yellow">"By mutating only a fraction of a valid file, it is often possible to generate a new test case that is mostly valid, but also contains abnormal values to trigger crashes of the PUT."</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=KHAJ656V)


 <mark class="hltr hltr-purple">"5.2.1 Bit-Flipping"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=NG6CIPEH)


 <mark class="hltr hltr-yellow">"Bit-flipping is a common technique used by many model-less fuzzers"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=XIET5SIV)


 <mark class="hltr hltr-yellow">"mutation ratio, which determines the number of bit positions to flip for a single execution of IN P U TGE N"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=3S4NFH5B)


 <mark class="hltr hltr-purple">"5.2.2 Arithmetic Mutation"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=B8863ARZ)


 <mark class="hltr hltr-yellow">"AFL [241] and honggfuzz [213] contain another mutation operation where they consider a selected byte sequence as an integer and perform simple arithmetic on that value."</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=69J73QGR)


 <mark class="hltr hltr-purple">"5.2.3 Block-based Mutation"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=K4ET6WBA)


 <mark class="hltr hltr-yellow">"There are several block-based mutation methodologies, where a block is a sequence of bytes of a seed:"</mark> [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=3CHK4Q8P)

insert, delete, random, permute order, resize, add block from another seed [Page 10](zotero://open-pdf/library/items/BTZB38T9?page=10&annotation=3CHK4Q8P)


 <mark class="hltr hltr-purple">"5.2.4 Dictionary-based Mutation"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=RBKY8GBN)


 <mark class="hltr hltr-yellow">"Some fuzzers use a set of predefined values with potentially significant semantic meaning for mutation."</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=ZKGLTCX3)


 <mark class="hltr hltr-purple">"5.3 White-box Fuzzers"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=SZ66SM3L)


 <mark class="hltr hltr-yellow">"White-box fuzzers can also be categorized into either modelbased or model-less fuzzers."</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=28KIVQ7T)


 <mark class="hltr hltr-purple">"5.3.1 Dynamic Symbolic Execution"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=Y5V7BCX7)


 <mark class="hltr hltr-orange">"At a high level, classic symbolic execution [130], [42], [112] runs a program with symbolic values as inputs, which represents all possible values."</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=YE8ZGNGA)


 <mark class="hltr hltr-yellow">"by letting the user to specify uninteresting parts of the code"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=UB5EDUBQ)


 <mark class="hltr hltr-purple">"5.3.2 Guided Fuzzing"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=4XRLMLX5)


 <mark class="hltr hltr-yellow">"Some fuzzers leverage static or dynamic program analysis techniques to enhance the effectiveness of fuzzing."</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=579NY6VT)


 <mark class="hltr hltr-purple">"5.3.3 PUT Mutation"</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=YPS58YZZ)


 <mark class="hltr hltr-yellow">"One of the practical challenges in fuzzing is bypassing a checksum validation."</mark> [Page 11](zotero://open-pdf/library/items/BTZB38T9?page=11&annotation=HKIV77Q7)


 <mark class="hltr hltr-purple">"6 INPUT EVALUATION"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=CMQVEMK3)


 <mark class="hltr hltr-purple">"6.1 Bug Oracles"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=VHMQZWTC)


 <mark class="hltr hltr-yellow">"For example, if a stack buffer overflow overwrites a pointer on the stack with a valid memory address, the program might run to completion with an invalid result rather than crashing but the fuzzer would not detect this."</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=KGTEZR7H)


 <mark class="hltr hltr-yellow">"sanitizers"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=X6DDDRZL)


 <mark class="hltr hltr-purple">"6.1.1 Memory and Type Safety"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=SWYNP6TI)


 <mark class="hltr hltr-purple">"6.1.2 Undefined Behaviors"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=26W5L4V6)


 <mark class="hltr hltr-purple">"6.1.3 Input Validation"</mark> [Page 12](zotero://open-pdf/library/items/BTZB38T9?page=12&annotation=AQQKECB3)


 <mark class="hltr hltr-purple">"6.1.4 Semantic Difference"</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=JZRBAZGN)


 <mark class="hltr hltr-yellow">"Semantic bugs are often discovered using a technique called differential testing [153], which compares the behavior of similar (but not identical) programs."</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=TZV2CNLR)


 <mark class="hltr hltr-purple">"6.2 Execution Optimizations"</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=7TB2WIWC)


 <mark class="hltr hltr-purple">"6.3 Triage"</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=MMA7UISI)


 <mark class="hltr hltr-yellow">"Triage is the process of analyzing and reporting test cases that cause policy violations."</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=7V8MQ6AQ)


 <mark class="hltr hltr-purple">"6.3.1 Deduplication"</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=XDNG8HXH)


 <mark class="hltr hltr-yellow">"Deduplication is the process of pruning any test case from the output set that triggers the same bug as another test case."</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=Y95Y2M5U)


 <mark class="hltr hltr-yellow">"stack backtrace hashing, coveragebased deduplication, and semantics-aware deduplication."</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=E4T6SHEZ)


 <mark class="hltr hltr-yellow">"The underlying hypothesis of stack backtrace hashing is that similar crashes are caused by similar bugs, and vice versa. However, to the best of our knowledge, this hypothesis has never been directly tested. There is some reason to doubt its veracity: some crashes do not occur near the code that caused the crash. For example, a vulnerability that causes heap corruption might only cause a crash when an unrelated part of the code attempts to allocate memory and not when the heap overflow occurred."</mark> [Page 13](zotero://open-pdf/library/items/BTZB38T9?page=13&annotation=K97P8BDE)


 <mark class="hltr hltr-purple">"6.3.2 Prioritization and Exploitability"</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=NMEHRWRV)


 <mark class="hltr hltr-yellow">"Prioritization, a.k.a. the fuzzer taming problem [61], is the process of ranking or grouping violating test cases according to their severity and uniqueness."</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=HGDTPZLS)


 <mark class="hltr hltr-purple">"6.3.3 Test case minimization"</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=UPB8KNYJ)


 <mark class="hltr hltr-yellow">"Another important part of triage is test case minimization. Test case minimization is the process of identifying the portion of a violating test case that is necessary to trigger the violation, and optionally producing a test case that is smaller and simpler than the original but still causes a violation."</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=MBGKQZQN)


 <mark class="hltr hltr-purple">"7 CONFIGURATION UPDATING"</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=INIQBB7P)


 <mark class="hltr hltr-purple">"7.1 Evolutionary Seed Pool Update"</mark> [Page 14](zotero://open-pdf/library/items/BTZB38T9?page=14&annotation=8WZVKHIY)


 <mark class="hltr hltr-purple">"7.2 Maintaining a Minset"</mark> [Page 15](zotero://open-pdf/library/items/BTZB38T9?page=15&annotation=2KWFFWL4)


 <mark class="hltr hltr-purple">"8 RELATED WORK"</mark> [Page 15](zotero://open-pdf/library/items/BTZB38T9?page=15&annotation=JP2FC7IY)


 <mark class="hltr hltr-purple">"9 CONCLUDING REMARKS"</mark> [Page 15](zotero://open-pdf/library/items/BTZB38T9?page=15&annotation=EVWP7QXY)




%% Import Date: 2026-02-02T11:03:56.815-05:00 %%
