---
title:  "ChIRAAG: ChatGPT Informed Rapid and Automated Assertion Generation"
date: 2026-01-02T15:44:09-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>2024</dd>
<dt>Authors</dt>
<dd>Bhabesh Mali, Karthik Maddala, Vatsal Gupta, Sweeya Reddy, Chandan Karfa, Ramesh Karri</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1109/ISVLSI61997.2024.00130">10.1109/ISVLSI61997.2024.00130</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
- Their approach involves converting the RTL and the design specification into a JSON format. 
- Their benchmarks used are design from  OpenTitan
	- `RV_TIMER`
	- `PattGen`
	- `GPIO`
	- `ROM_Ctrl`
	- `sram_ctrl`
	- `adc_ctrl`
- There is no mention of coverage
- Since they are continuously iterating, I am assuming that they generated assertions are correct
- For each module they are generating only handful of assertions
- Their comparison against the number of assertions given in OpenTitan is flawed. I am not sure if OpenTitan is trying to perform formal verification on all their designs
	- As per https://opentitan.org/book/hw/index.html, they mostly do dynamic testing at first. They have plans to do formal verification but it is not yet complete
	- Hence it is not appropriate to compare the #(assertions)
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-purple">"I. INTRODUCTION"</mark> [Page 680](zotero://open-pdf/library/items/ECU64AVC?page=680&annotation=4G39S2PN)


 <mark class="hltr hltr-purple">"II. RELATED WORKS"</mark> [Page 680](zotero://open-pdf/library/items/ECU64AVC?page=680&annotation=MFSF8FRR)


 <mark class="hltr hltr-purple">"III. CHIRAAG: OUR SVA GENERATION FRAMEWORK"</mark> [Page 681](zotero://open-pdf/library/items/ECU64AVC?page=681&annotation=25GKMVCN)


 <mark class="hltr hltr-purple">"A. Formatting of specification"</mark> [Page 681](zotero://open-pdf/library/items/ECU64AVC?page=681&annotation=TEBZUV8S)


 <mark class="hltr hltr-purple">"B. Automatic Assertion Generation"</mark> [Page 681](zotero://open-pdf/library/items/ECU64AVC?page=681&annotation=ZKCMEECM)


 <mark class="hltr hltr-purple">"IV. CASE STUDY: RV TIMER"</mark> [Page 681](zotero://open-pdf/library/items/ECU64AVC?page=681&annotation=7JAYR4W6)


 <mark class="hltr hltr-purple">"V. EXPERIMENTAL RESULTS AND DISCUSSIONS"</mark> [Page 682](zotero://open-pdf/library/items/ECU64AVC?page=682&annotation=EJQ3KXA2)


 <mark class="hltr hltr-red">"Interestingly, ChIRAAG generates more assertions than that was provided in OpenTitan. Importantly, ChIRAAG-generated assertions are important and satisfy some aspects of the design that were missed by the OpenTitan assertions."</mark> [Page 683](zotero://open-pdf/library/items/ECU64AVC?page=683&annotation=N3TZUBCN)

Define "missed"? There is no coverage metric. We cannot naively compare #(assertions). It is pretty easy to write vacuous assertions that prove nothing. [Page 683](zotero://open-pdf/library/items/ECU64AVC?page=683&annotation=N3TZUBCN)


 <mark class="hltr hltr-purple">"VI. CONCLUSION"</mark> [Page 683](zotero://open-pdf/library/items/ECU64AVC?page=683&annotation=TT33ZILN)




%% Import Date: 2026-01-02T15:44:11.028-05:00 %%
