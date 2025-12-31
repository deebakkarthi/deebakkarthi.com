---
title:  "A Coverage-Driven Formal Methodology for Verification Sign-off"
date: 2025-12-31T15:09:58-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2019</dd>
<dt>Authors</dt>
<dd>Ang Li, Hao Chen, Jason K Yu, Ee Loon Teoh, Iswerya Prem Anand</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/"></a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
They use COI coverage
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-purple">"I. INTRODUCTION"</mark> [Page 1](zotero://open-pdf/library/items/3F9R7VBE?page=1&annotation=RWRACPK7)


 <mark class="hltr hltr-purple">"II. COVERAGE-DRIVEN FORMAL VERIFICATION FLOW"</mark> [Page 1](zotero://open-pdf/library/items/3F9R7VBE?page=1&annotation=PG528CPB)


 <mark class="hltr hltr-purple">"A. Formal Coverage"</mark> [Page 1](zotero://open-pdf/library/items/3F9R7VBE?page=1&annotation=CBI2DM89)


 <mark class="hltr hltr-blue">"Legal design state space becomes unreachable due to (usually unintentional) over-constraints in the FV environment. As shown in Figure 1, the yellow area illustrates the legal state space not exercised/checked by FV due to over-constraints. It is not uncommon to have unintentional over-constraints in a FV environment since they are difficult to uncover. Without proper coverage analysis, bugs in over-constrained legal state space may be missed by FV."</mark> [Page 2](zotero://open-pdf/library/items/3F9R7VBE?page=2&annotation=7XI6G6PH)


 <mark class="hltr hltr-yellow">"During the verification execution phase, we use assertion COI (Cone of Influence) coverage [8] to ensure the entire logic of the DUT, except dead code, is within the union of COIs from all assertions."</mark> [Page 2](zotero://open-pdf/library/items/3F9R7VBE?page=2&annotation=Z8B3DPWP)


 <mark class="hltr hltr-yellow">"Second, to eliminate unintentional over-constraint, we use stimuli reachability coverage to ensure no branch/statement/expression in the RTL is unreachable due to incorrect constraints. We also use functional coverage, as we had encountered some complex interdependent over-constraints that could not be uncovered by stimuli coverage only."</mark> [Page 2](zotero://open-pdf/library/items/3F9R7VBE?page=2&annotation=IH36FC2S)


 <mark class="hltr hltr-purple">"B. Formal Verification Plan"</mark> [Page 3](zotero://open-pdf/library/items/3F9R7VBE?page=3&annotation=34QI78V5)


 <mark class="hltr hltr-purple">"C. Coverage-Driven Formal Verification Flow"</mark> [Page 4](zotero://open-pdf/library/items/3F9R7VBE?page=4&annotation=8UYZ6VI9)


 <mark class="hltr hltr-yellow">"Verification signoff for the design can be declared when the following criteria are met:  1. 100% functional coverage reached. No assertion failures evaluated in any functional cover trace. 2. 100% COI and Reachability coverage reached with waivers (for dead code, etc.) 3. All assertions are either fully proven or bounded proven with sufficient bounds. 4. No conflict in FV constraints."</mark> [Page 5](zotero://open-pdf/library/items/3F9R7VBE?page=5&annotation=GEW9RNLW)


 <mark class="hltr hltr-purple">"III. FORMAL AND SIMULATION CO-VERIFICATION"</mark> [Page 6](zotero://open-pdf/library/items/3F9R7VBE?page=6&annotation=82W4B7BU)


 <mark class="hltr hltr-purple">"A. Formal and Simulation Co-Verification Plan"</mark> [Page 6](zotero://open-pdf/library/items/3F9R7VBE?page=6&annotation=ENVITRGA)


 <mark class="hltr hltr-purple">"B. Merging FV and Simulation Coverage"</mark> [Page 6](zotero://open-pdf/library/items/3F9R7VBE?page=6&annotation=I5I5X8ZG)


 <mark class="hltr hltr-purple">"IV. RESULTS"</mark> [Page 6](zotero://open-pdf/library/items/3F9R7VBE?page=6&annotation=EXESFASG)


 <mark class="hltr hltr-purple">"A. Design Specification Improvement"</mark> [Page 6](zotero://open-pdf/library/items/3F9R7VBE?page=6&annotation=PKNBXXEY)


 <mark class="hltr hltr-purple">"B. Quality of Bugs Discovered"</mark> [Page 7](zotero://open-pdf/library/items/3F9R7VBE?page=7&annotation=T4DJSRQT)


 <mark class="hltr hltr-purple">"C. Execution Time/Project Schedule Improvement"</mark> [Page 8](zotero://open-pdf/library/items/3F9R7VBE?page=8&annotation=J5CVKS7W)


 <mark class="hltr hltr-purple">"D. Formal and Simulation Co-Verification"</mark> [Page 9](zotero://open-pdf/library/items/3F9R7VBE?page=9&annotation=A3YLVB3T)


 <mark class="hltr hltr-purple">"V. CONCLUSIONS AND FUTURE WORK"</mark> [Page 10](zotero://open-pdf/library/items/3F9R7VBE?page=10&annotation=RWK59Q8N)




%% Import Date: 2025-12-31T15:10:00.930-05:00 %%
