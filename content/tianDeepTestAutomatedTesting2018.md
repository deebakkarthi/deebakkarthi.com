---
title:  "DeepTest: automated testing of deep-neural-network-driven autonomous cars"
date: 2026-02-02T11:34:11-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2018</dd>
<dt>Authors</dt>
<dd>Yuchi Tian, Kexin Pei, Suman Jana, Baishakhi Ray</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1145/3180155.3180220">10.1145/3180155.3180220</a></dd>
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

 <mark class="hltr hltr-yellow">"In this paper, we design, implement, and evaluate DeepTest, a systematic testing tool for automatically detecting erroneous behaviors of DNN-driven vehicles that can potentially lead to fatal crashes."</mark> [Page 303](zotero://open-pdf/library/items/CFF9UVYX?page=303&annotation=YIUB4A5I)


 <mark class="hltr hltr-purple">"1 INTRODUCTION"</mark> [Page 303](zotero://open-pdf/library/items/CFF9UVYX?page=303&annotation=NJBQNA7A)


 <mark class="hltr hltr-yellow">"Moreover, the Satisfiability Modulo Theory (SMT) solvers that have been quite successful at generating high-coverage test inputs for traditional software are known to have trouble with formulas involving floating-point arithmetic and highly nonlinear constraints, which are commonly used in DNNs."</mark> [Page 304](zotero://open-pdf/library/items/CFF9UVYX?page=304&annotation=SQQMUXTD)


 <mark class="hltr hltr-yellow">"irst, we leverage the notion of neuron coverage (i.e., the number of neurons activated by a set of test inputs) to systematically explore different parts of the DNN logic."</mark> [Page 304](zotero://open-pdf/library/items/CFF9UVYX?page=304&annotation=JUX4RHZX)


 <mark class="hltr hltr-purple">"2 BACKGROUND"</mark> [Page 304](zotero://open-pdf/library/items/CFF9UVYX?page=304&annotation=PNRFI96X)


 <mark class="hltr hltr-purple">"2.1 Deep Learning for Autonomous Driving"</mark> [Page 304](zotero://open-pdf/library/items/CFF9UVYX?page=304&annotation=KFWLWJAS)


 <mark class="hltr hltr-purple">"2.2 Different DNN Architectures"</mark> [Page 305](zotero://open-pdf/library/items/CFF9UVYX?page=305&annotation=RTVDTXYM)


 <mark class="hltr hltr-purple">"3 METHODOLOGY"</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=QNJYDR43)


 <mark class="hltr hltr-purple">"3.1 Systematic Testing with Neuron Coverage"</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=4HEAFXEC)


 <mark class="hltr hltr-yellow">"It is defined as the ratio of unique neurons that get activated for given input(s) and the total number of neurons in a DNN"</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=Q82HPLPA)


 <mark class="hltr hltr-yellow">"An individual neuron is considered activated if the neuron’s output (scaled by the overall layer’s outputs) is larger than a DNN-wide threshold. In this paper, we use 0.2 as the neuron activation threshold for all our experiments."</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=XA4F77ZT)


 <mark class="hltr hltr-purple">"3.2 Increasing Coverage with Synthetic Images"</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=CLFP3TH3)


 <mark class="hltr hltr-yellow">"Therefore, DeepTest focuses on generating realistic synthetic images by applying image transformations on seed images and mimic different real-world phenomena like camera lens distortions, object movements, different weather conditions, etc. To this end, we investigate nine different realistic image transformations (changing brightness, changing contrast, translation, scaling, horizontal shearing, rotation, blurring, fog effect, and rain effect)."</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=A5AVW6GI)


 <mark class="hltr hltr-yellow">"inear, affine, and convolutional."</mark> [Page 306](zotero://open-pdf/library/items/CFF9UVYX?page=306&annotation=HJVBPWR5)


 <mark class="hltr hltr-purple">"3.3 Combining Transformations to Increase Coverage"</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=B2TP3FS8)


 <mark class="hltr hltr-yellow">"As the individual image transformations increase neuron coverage, one obvious question is whether they can be combined to further increase the neuron coverage."</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=SFGVCZX4)


 <mark class="hltr hltr-purple">"3.4 Creating a Test Oracle with Metamorphic Relations"</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=WBJYNTTX)


 <mark class="hltr hltr-yellow">"we leverage metamorphic relations [33] between the car behaviors across different synthetic images."</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=LNP25T6C)


 <mark class="hltr hltr-yellow">"For example, the autonomous car’s steering angle should not change significantly for the same image under any lighting/weather conditions, blurring, or any affine transformations with small parameter values."</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=X72CVM8P)


 <mark class="hltr hltr-yellow">"The above equation assumes that the errors produced by a model for the transformed images as input should be within a range of λ times the MSE produced by the original image set."</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=4WMRT3AL)


 <mark class="hltr hltr-purple">"4 IMPLEMENTATION"</mark> [Page 307](zotero://open-pdf/library/items/CFF9UVYX?page=307&annotation=MHR55IPS)


 <mark class="hltr hltr-purple">"5 RESULTS"</mark> [Page 308](zotero://open-pdf/library/items/CFF9UVYX?page=308&annotation=PIBFX56I)


 <mark class="hltr hltr-yellow">"As steering angle is a continuous variable, we check Spearman rank correlation [76] between neuron coverage and steering angle"</mark> [Page 308](zotero://open-pdf/library/items/CFF9UVYX?page=308&annotation=6X55FGMI)


 <mark class="hltr hltr-yellow">"We use the Wilcoxon nonparametric test as the steering direction can only have two values (left and right)."</mark> [Page 308](zotero://open-pdf/library/items/CFF9UVYX?page=308&annotation=4T4DVDKQ)


 <mark class="hltr hltr-yellow">"Neuron coverage is correlated with input-output diversity and can be used to systematic test generation."</mark> [Page 309](zotero://open-pdf/library/items/CFF9UVYX?page=309&annotation=W7CH9GI9)


 <mark class="hltr hltr-yellow">"Different image transformations tend to activate different sets of neurons."</mark> [Page 309](zotero://open-pdf/library/items/CFF9UVYX?page=309&annotation=659T4TIZ)


 <mark class="hltr hltr-yellow">"By systematically combining different image transformations, neuron coverage can be improved by around 100% w.r.t. the coverage achieved by the original seed images."</mark> [Page 310](zotero://open-pdf/library/items/CFF9UVYX?page=310&annotation=FXDUZDS3)


 <mark class="hltr hltr-yellow">"Accuracy of a DNN can be improved up to 46% by retraining the DNN with synthetic data generated by DeepTest."</mark> [Page 311](zotero://open-pdf/library/items/CFF9UVYX?page=311&annotation=58JG3WIB)


 <mark class="hltr hltr-purple">"6 THREATS TO VALIDITY"</mark> [Page 312](zotero://open-pdf/library/items/CFF9UVYX?page=312&annotation=LMCTCBL3)


 <mark class="hltr hltr-yellow">"We restricted ourselves to only test the accuracy of the steering angle as our tested models do not support braking and acceleration yet."</mark> [Page 312](zotero://open-pdf/library/items/CFF9UVYX?page=312&annotation=RG2EZMPN)


 <mark class="hltr hltr-purple">"7 RELATED WORK"</mark> [Page 312](zotero://open-pdf/library/items/CFF9UVYX?page=312&annotation=H9GDYKD8)


 <mark class="hltr hltr-purple">"8 CONCLUSION"</mark> [Page 312](zotero://open-pdf/library/items/CFF9UVYX?page=312&annotation=JX2597PZ)


 <mark class="hltr hltr-purple">"9 ACKNOWLEDGEMENTS"</mark> [Page 312](zotero://open-pdf/library/items/CFF9UVYX?page=312&annotation=PFV42FUJ)




%% Import Date: 2026-02-02T11:34:38.193-05:00 %%
