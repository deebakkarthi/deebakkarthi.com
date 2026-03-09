---
title:  "Dynamically discovering likely program invariants to support program evolution"
date: 2026-03-09T11:32:27-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>1999</dd>
<dt>Authors</dt>
<dd>Michael D. Ernst, Jake Cockrell, William G. Griswold, David Notkin</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1145/302405.302467">10.1145/302405.302467</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
- Daikon can extract invariants from arrays and scalars.S
- This papers attempts to extend to other data structures
	- The first method is convert any data structure to an array and run daikon on it
	- The second methods detects conditional invariants over recursive data structures
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-yellow">"A prototype implementation, Daikon, recovered invariants from formallyspecified programs, and the invariants it detected assisted programmers in a software evolution task. However, it was limited to finding invariants over scalars and arrays."</mark> [Page 1](zotero://open-pdf/library/items/FPL4YNUY?page=1&annotation=LM24QXFT)


 <mark class="hltr hltr-yellow">"The first technique is to traverse these collections and record them as arrays in the program traces; then the basic Daikon invariant detector can infer invariants over these new trace elements."</mark> [Page 1](zotero://open-pdf/library/items/FPL4YNUY?page=1&annotation=8D8MWLT7)


 <mark class="hltr hltr-purple">"1 Introduction"</mark> [Page 1](zotero://open-pdf/library/items/FPL4YNUY?page=1&annotation=2H2N7DR4)


 <mark class="hltr hltr-yellow">"The instrumenter explicitly records in the trace file collections that are implicit (e.g., pointer-based). It does so by traversing the collection and writing out the visited objects as an array. We call this process linearization."</mark> [Page 1](zotero://open-pdf/library/items/FPL4YNUY?page=1&annotation=8XGKZB7A)


 <mark class="hltr hltr-orange">"conditional invariants (invariants that are not universally true"</mark> [Page 1](zotero://open-pdf/library/items/FPL4YNUY?page=1&annotation=U6FPLCIH)


 <mark class="hltr hltr-purple">"2 Background"</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=XAIL4W2B)


 <mark class="hltr hltr-yellow">"the accuracy of the inferred invariants depends in part on the quality and completeness of the test cases."</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=R6CEWS7T)


 <mark class="hltr hltr-yellow">"Because false invariants tend to be falsified quickly, the cost of computing invariants tends to be proportional to the number of invariants discovered."</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=MQ25PN5V)


 <mark class="hltr hltr-yellow">"For instance, if array a and integer lasti are both in scope, then properties over a[lasti] may be of interest, even though it is not a variable and may not even appear in the program text."</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=AIN56RPZ)


 <mark class="hltr hltr-yellow">"For performance reasons, derived variables are introduced only when known to be sensible. For instance, for sequence A, the derived variable size(A) is introduced and invariants are computed over it before A[i] is introduced, to ensure that i is in the range of A."</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=V5JAEEH9)


 <mark class="hltr hltr-yellow">"Consequently, for each detected invariant, Daikon computes the probability that such a property would appear by chance in a random input. The property is reported only if its probability is smaller than a user-defined confidence parameter."</mark> [Page 2](zotero://open-pdf/library/items/FPL4YNUY?page=2&annotation=TR8Z8E8D)


 <mark class="hltr hltr-purple">"3 Invariants over collections"</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=UBVYXG2U)


 <mark class="hltr hltr-yellow">"Our approach is to extend the instrumenter to find collections that are implicit in the program, linearize them, and record them explicitly in the trace file as arrays."</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=GG3VVH3Y)


 <mark class="hltr hltr-yellow">"If a field is found that leads from an object to another object of the same type (e.g., element.next), the instrumenter outputs the two objects as successive elements in the same array. If there are multiple fields with this property (e.g., a prev field in addition to the next field), then one linearization is done for each field and multiple arrays are written into the trace file."</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=LVLXEFC5)


 <mark class="hltr hltr-yellow">"Invariants over collections can be classified as either local invariants or global invariants."</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=JMF4PP4F)


 <mark class="hltr hltr-purple">"4 Conditional invariants"</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=RVLVG6V6)


 <mark class="hltr hltr-yellow">"Many important program properties are not universally true."</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=3DNVCTZN)


 <mark class="hltr hltr-yellow">"Conditional invariants are particularly important for programs that manipulate recursive data structures, because different properties typically hold in the base case and in the recursive case."</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=LB9QSKUB)


 <mark class="hltr hltr-yellow">"The mechanism for detecting conditional invariants is to split data traces into parts based on some predicate, perform invariant inference on each part"</mark> [Page 3](zotero://open-pdf/library/items/FPL4YNUY?page=3&annotation=ADGEZHHK)


 <mark class="hltr hltr-yellow">"We implemented the static analysis policy of using boolean expressions in a method and side-effect-free zeroargument boolean member functions;"</mark> [Page 4](zotero://open-pdf/library/items/FPL4YNUY?page=4&annotation=KSV5HUBU)


 <mark class="hltr hltr-purple">"5 Assessment"</mark> [Page 4](zotero://open-pdf/library/items/FPL4YNUY?page=4&annotation=RW8TAZWT)


 <mark class="hltr hltr-yellow">"Our measure of quality for an invariant is relevance"</mark> [Page 4](zotero://open-pdf/library/items/FPL4YNUY?page=4&annotation=IXD382MZ)


 <mark class="hltr hltr-purple">"5.1 Textbook data structures"</mark> [Page 4](zotero://open-pdf/library/items/FPL4YNUY?page=4&annotation=BUSN4LBE)


 <mark class="hltr hltr-yellow">"For each of the classes in these programs for the selected test suite, Daikon reported at least 95% of the relevant invariants. For example, LinkedList reported 1 irrelevant invariant and 11 invariants that were implied by other reported invariants, meaning that 96% of the reported invariants were relevant. Daikon also never reported fewer than 98% of the expected invariants. For LinkedList, 3 manually identified relevant invariants were missed and 317 were reported, meaning that 99% of the manually identified invariants were found by Daikon."</mark> [Page 4](zotero://open-pdf/library/items/FPL4YNUY?page=4&annotation=NTSJYYDX)


 <mark class="hltr hltr-purple">"5.1.1 Qualitative analysis"</mark> [Page 5](zotero://open-pdf/library/items/FPL4YNUY?page=5&annotation=ILL24KST)


 <mark class="hltr hltr-purple">"Linked lists."</mark> [Page 5](zotero://open-pdf/library/items/FPL4YNUY?page=5&annotation=G56JXHF4)


 <mark class="hltr hltr-yellow">"We do not, however, detect the exact predicate for determining when deletion was successful. The reason is that we currently split only on conditions in the program (however, the current prototype does examine local variables, which often appear in conditionals) and zeroargument boolean member functions."</mark> [Page 6](zotero://open-pdf/library/items/FPL4YNUY?page=6&annotation=F4NTMYXR)


 <mark class="hltr hltr-purple">"Ordered lists"</mark> [Page 6](zotero://open-pdf/library/items/FPL4YNUY?page=6&annotation=BUDZHV4U)


 <mark class="hltr hltr-purple">"Stacks: list representation."</mark> [Page 6](zotero://open-pdf/library/items/FPL4YNUY?page=6&annotation=MPYNZPYX)


 <mark class="hltr hltr-purple">"Stacks: array representation"</mark> [Page 6](zotero://open-pdf/library/items/FPL4YNUY?page=6&annotation=7QJE5X7S)


 <mark class="hltr hltr-purple">"Queues"</mark> [Page 6](zotero://open-pdf/library/items/FPL4YNUY?page=6&annotation=LE7MUZYS)


 <mark class="hltr hltr-purple">"5.2 City map student programs"</mark> [Page 7](zotero://open-pdf/library/items/FPL4YNUY?page=7&annotation=TPFGJPRN)


 <mark class="hltr hltr-purple">"6 Incremental processing"</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=UMQ8FBNC)


 <mark class="hltr hltr-yellow">"After briefly discussing performance issues, we outline our approach to using online, incremental invariant inference to permit scaling Daikon to larger, more realistic programs."</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=5CXPK7BG)


 <mark class="hltr hltr-yellow">"The former number tends to be relatively small, whereas the latter is cubic in the number of variables in scope at a program point."</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=ZLTEMK68)


 <mark class="hltr hltr-yellow">"A straightforward approach to scaling is to give programmers control over instrumentation."</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=FIL28BMZ)


 <mark class="hltr hltr-yellow">"To make the remaining tracing and inference go faster, we can eliminate I/O costs by running the invariant detector online in cooperation with the program under test, directly examining its data structures."</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=LTUA689G)


 <mark class="hltr hltr-yellow">"When testing invariants online, we need not store all data values indefinitely. Values need only be accumulated initially to permit instantiating all viable invariants in a staged fashion, then discarded."</mark> [Page 8](zotero://open-pdf/library/items/FPL4YNUY?page=8&annotation=47WDZIRZ)


 <mark class="hltr hltr-purple">"7 Related work"</mark> [Page 9](zotero://open-pdf/library/items/FPL4YNUY?page=9&annotation=MAY68CP4)


 <mark class="hltr hltr-purple">"Checking formal specifications"</mark> [Page 9](zotero://open-pdf/library/items/FPL4YNUY?page=9&annotation=LUZIEFAH)


 <mark class="hltr hltr-purple">"8 Conclusion"</mark> [Page 9](zotero://open-pdf/library/items/FPL4YNUY?page=9&annotation=FSF3W7GS)




%% Import Date: 2026-03-09T11:32:40.280-04:00 %%
