---
title: Periscope Final Edits
date:  2026-08-08T13:28:48-04:00
tags:
mathjax: false
---

# TODOs

## Review 1

> *The authors conflate model checking verdicts ‘falsified’ and ’not solved’.*

<span style="color:red">TODO: We need to review the paper and make sure we never use these terms interchangeably.</span>
### Changes
### Section 3.1
```diff
- These tools classify assertions as
+ We interpret the tools' classification as
```

As we later clarify that the tools' original classification is *proven, falsified and undetermined* I felt that **interpret** should be used instead of saying that they tools themselves classify them as such.

```diff
- An assertion can be \emph{proven}, \emph{falsified}, or \emph{not solved}, but we combine the latter two into \emph{Not Proven} because these classes do not guarantee that assertions hold true for \emph{all} reachable states.
+ Formal tools deem assertions to be proven, falsified, or undetermined. We combine the latter two into Not Proven. Though they are distinct, from Periscope’s point of view, assertions without under-constrained guarantees are functionally the same, requiring further runtime confirmation.
```

This is the clarification that though distinct, for our use-case they are identical. 

---

## Review 2

> *The meaning of a Cat-3 assertion is not characterized precisely enough to support some of our conclusions; an assertion that remains consistent over a finite collection of runtime workloads is not necessarily a valid invariant or a sound environment assumption.*

  <span style="color:red">TODO: I thought we were clear about this, but lets further highlight that our approach does not assume runtime-consistent assertions are necessarily valid invariants - and that we have an approach to ‘rollback’ falsified Cat-3s.</span>
  
### Changes 

#### Section 4.5

```diff
- We first improve the coverage of both simulation and emulation workloads. After a desirable level of coverage is achieved, indicated by a reduction in the size of the appropriate categories, we attempt to close the FV-RV gap by utilizing two feedback strategies. First, we use consistent \myclass{3} assertions to refine the RV workload, increasing its coverage.
+ Through this feedback, we first improve the coverage of both the simulation and emulation workloads. A coverage increase will be signified by the reduction in the size of the appropriate category: increased simulation coverage would reduce Cat-2 and increased runtime coverage would reduce Cat-3. Once this plateaus, we can attempt to close the FV-RV gap. This gap exists due to the lack of constraints in the formal environment. An easy heuristic to remedy this is to convert runtime consistent behavior into assumptions. We call these suppositions - to highlight that they are not formal assumptions , but rather temporary tools that aid the verification effort
```

- Removed *improving coverage through consistent Cat-3* because it directly contradicted the first statement( *After a desirable coverage is achieved...* )
- Explicitly mention what each reduction means
- Use *easy heuristic* to characterize the weak nature of Cat-3 assumptions
- Introduce the word *supposition*
- From here on all occurrences of *assumptions* has been changed to *suppositions*

<span style="color: blue">TODO: We should also mention the possibility that even if Cat-3’s are falsified, they may allow deeper exploration of the design space and expose new bugs, and that this is an interesting area for future work.</span>

> *The method used to combine assertions mined from different simulation traces is unclear and may affect the validity of the reported results. The paper states that assertions are mined independently from each trace and that the results are then combined to preserve workload-specific properties. If this combination is a union, an assertion that holds in one trace but is already contradicted by another mining trace may still enter the final candidate set, artificially increasing both the total assertion count and the number of assertions later falsified at runtime.* 

<span style="color:red">TODO: We need to make it clear that we used the intersection for our replaces, and also explore a general approach to combining assertions mined across multiple traces</span>

> *The experimental evaluation does not provide enough information about the cost and scalability of the runtime-monitoring implementation. The paper does not report FPGA resource utilization, frequency degradation caused by instrumentation, monitor-generation and synthesis time, the number of monitors that can be deployed simultaneously, or whether multiple FPGA builds were needed to evaluate all assertions.*


<span style="color:red">TODO: Lets add cost and scalability information for the different components of Periscope.</span>

 Yasas added these
 
--- 

## Review 3
> *The authors claims that our paper is thin in technical contributions, because we use existing tools.*

<span style="color:red">TODO: I think we can boost the importance of our contributions to make it clear that we don’t only contribute a new classification and claim the importance of Cat3 assertions, but rather that we’re setting the foundation for SIGNIFICANT future work.</span>

> *The authors suggest that our runtime verification component isn’t sufficiently described.*

<span style="color:red">TODO: Lets expand on our runtime monitor, FPGA resource utilization and scaling. Also, let’s explain how we record and offload runtime results.</span>

Yasas added these


# Non-Changes
- Changing Section 3.3's **two** categories to **three** i.e including *Undetermined*
	- But this will require us changing the proceeding sentence too where we say *distinguishing between these two ...*
		- Here **two** refers to **valid CEX and invalid CEX**
		- When we change it to three then this would become **valid CEX, invalid CEX and undetermined**.
		- I don't think undetermined is distinguished from the other two using RV
		- Hence it is best to leave the paragraph as is. We already preface the section by saying *assertions that fail...*. Failing only have valid CEX and invalid CEX, hence it is semantically accurate.
- Section 4
	- We agreed on not adding next text to explicitly say that the flow is cyclic
	- This would have required us to explain exactly what is cyclic and what is not, requiring substantial additional text
- Section 4.2
	- Introducing *Templates* and the multiplicity of them
	- We agreed not to do this because it would require defining what *hierarchy* meant and though we intuitively know what *simple* and *complex* mean, defining them rigorously would require too much text.