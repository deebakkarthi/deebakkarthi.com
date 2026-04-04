---
title:  "Coverage Metrics for Formal Veriﬁcation"
date: 2026-04-04T10:13:11-04:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2003</dd>
<dt>Authors</dt>
<dd>Hana Chockler, Orna Kupferman, Moshe Y Vardi</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/"></a></dd>
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

 <mark class="hltr hltr-purple">"1 Introduction"</mark> [Page 1](zotero://open-pdf/library/items/89CP795Y?page=1&annotation=GIRMFUFP)


 <mark class="hltr hltr-blue">"One direction is to detect vacuous satisfaction of the specification [BBER01,KV03,PS02], where cases like antecedent failure [BB94] make parts of the specification irrelevant to its satisfaction. For example, the specification “every request is eventually granted” is vacuously satisfied in a design in which no requests are sent."</mark> [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=2RDDMKBQ)

Cover=0 assertions are vacuous [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=2RDDMKBQ)


 <mark class="hltr hltr-blue">"Indeed, specifications are written manually, and their completeness depends entirely on the competence of the person who writes them"</mark> [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=R9NCMPWV)


 <mark class="hltr hltr-orange">"code-based coverage metrics, the design is given as a program in some hardware description language (HDL), and one measures the number of code lines executed during the simulation."</mark> [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=TSS6YV3V)


 <mark class="hltr hltr-blue">"Early work on coverage metrics in formal verification [HKHZ99,KGG99] suggested two directions. Both directions reason about a finite-state machine (FSM) that models the design. The metric in [HKHZ99], later followed by [CKV01,CKKV01,CK02], is based on mutations applied to the FSM. Essentially, a state in the FSM is covered by the specification if modifying the value of a variable in the state renders the specification untrue. The metric in [KGG99] is based on a comparison between the FSM and a reduced tableau for the specification. See [CKV01] for a discussion of pros and cons of this metric."</mark> [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=RPSCRDGS)

The FSM mutation metric or something similar to it is often used in miners that don't have access to the RTL code. [Page 2](zotero://open-pdf/library/items/89CP795Y?page=2&annotation=RPSCRDGS)


 <mark class="hltr hltr-blue">"exhaustiveness of the verification effort, but no single measure can be absolute."</mark> [Page 3](zotero://open-pdf/library/items/89CP795Y?page=3&annotation=DJL543MV)


 <mark class="hltr hltr-yellow">"Prior research of coverage in formal verification [HKHZ99,KGG99,CKV01,CKKV01,CK02] has focused solely on state-based coverage."</mark> [Page 3](zotero://open-pdf/library/items/89CP795Y?page=3&annotation=GCY63GJV)


 <mark class="hltr hltr-yellow">"Our goal in this paper is to adapt the work done on coverage in simulation-based verification to the formalverification setting in order to obtain new coverage metrics."</mark> [Page 3](zotero://open-pdf/library/items/89CP795Y?page=3&annotation=UMAN9R7A)


 <mark class="hltr hltr-yellow">"The way we suggest to do so is to check whether the specification is vacuously satisfied in a mutant design in which this behavior is disabled: a vacuous satisfaction of the specification in such a design (we assume that the specification is not vacuously satisfied in the original design) indicates that the specification does refer to this behavior; on the other hand, a non-vacuous satisfaction of the specification in the mutant design indicates that the specification does not refer to the missing behavior."</mark> [Page 3](zotero://open-pdf/library/items/89CP795Y?page=3&annotation=N9JQNVYV)


 <mark class="hltr hltr-purple">"2 Preliminaries"</mark> [Page 4](zotero://open-pdf/library/items/89CP795Y?page=4&annotation=F9UAC68S)


 <mark class="hltr hltr-purple">"2.1 Simulation-Based Verification"</mark> [Page 4](zotero://open-pdf/library/items/89CP795Y?page=4&annotation=SU94RZ44)


 <mark class="hltr hltr-purple">"2.2 Model checking, vacuity, and coverage"</mark> [Page 5](zotero://open-pdf/library/items/89CP795Y?page=5&annotation=7ISET68T)


 <mark class="hltr hltr-blue">"Coverage in model checking was introduced in [HKHZ99,KGG99]. The metric in [HKHZ99] is based on FSM mutations"</mark> [Page 6](zotero://open-pdf/library/items/89CP795Y?page=6&annotation=8WG6LH69)


 <mark class="hltr hltr-purple">"3 Coverage Metrics in Simulation-based Verification"</mark> [Page 8](zotero://open-pdf/library/items/89CP795Y?page=8&annotation=JJNR8TN2)


 <mark class="hltr hltr-purple">"3.1 Syntactic coverage metrics"</mark> [Page 8](zotero://open-pdf/library/items/89CP795Y?page=8&annotation=MLRGQE6T)


 <mark class="hltr hltr-blue">"The most widely used circuit-coverage metrics are latch and toggle coverage [HH96,KN96]. Essentially, a latch is covered if it changes its value at least once during the execution of the input sequence. Similarly, an output variable is covered if its value has been toggled"</mark> [Page 8](zotero://open-pdf/library/items/89CP795Y?page=8&annotation=N2K8FNJP)


 <mark class="hltr hltr-purple">"3.2 Semantic coverage metrics"</mark> [Page 9](zotero://open-pdf/library/items/89CP795Y?page=9&annotation=UIVZ6LPN)


 <mark class="hltr hltr-purple">"4 Coverage Metrics in Model Checking"</mark> [Page 9](zotero://open-pdf/library/items/89CP795Y?page=9&annotation=S2J6SFP7)


 <mark class="hltr hltr-purple">"4.1 Syntactic coverage"</mark> [Page 10](zotero://open-pdf/library/items/89CP795Y?page=10&annotation=KFWTE3WR)


 <mark class="hltr hltr-purple">"4.2 Semantic coverage"</mark> [Page 10](zotero://open-pdf/library/items/89CP795Y?page=10&annotation=XJGSEYXG)


 <mark class="hltr hltr-purple">"5 Coverage Computation"</mark> [Page 11](zotero://open-pdf/library/items/89CP795Y?page=11&annotation=C5DI6L7G)




%% Import Date: 2026-04-04T10:13:15.651-04:00 %%
