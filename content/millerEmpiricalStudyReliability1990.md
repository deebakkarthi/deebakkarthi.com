---
title:  "An empirical study of the reliability of UNIX utilities"
date: 2026-01-28T10:09:28-05:00
tags:
mathjax: false
---

---

<dl>
<dt>Year</dt>
<dd>1990</dd>
<dt>Authors</dt>
<dd>Barton P. Miller, Lars Fredriksen, Bryan So</dd>
<dt>DOI</dt>
<dd><a href="https://doi.org/10.1145/96267.96279">10.1145/96267.96279</a></dd>
</dl>

---

# Related
 

# Persistent Notes

<!--- 
%% begin notes %%   --->
- This paper is about `fuzzing` - an automated approach of testing a program with randomly generated test input
- Before this paper people laughed at this idea but seeing the effectiveness and how cheap it is to do fuzzing it has become a staple in a tester's arsenal
- They carried out tests on the standard UNIX command line programs
- About a quarter of them *crashed*
	- That is the key takeaway here
	- They didn't check for *correctness*
	- They just wanted the program to not crash
	- All of these crashes were caused by very simple programming errors
- Since this was written in the early 90s, they weren't aware of the catastrophes a crash might cause
	- In our day-and-age, if a server can be crashed by just providing bad input, it opens the floodgates for DDOSers
- To test interactive programs such as `vi` and `emacs`, they create a pseudo-terminal and write to that which is then read by the `vi` or `emacs`
# Key takeaways
- Always check for bounds when operating on pointers or arrays
- All inputs should be bounded
- Always check the pointer for `NULL` before dereferencing
- Assume the least about of trust when considering other programmers. Always program defensively
- Always check for return values from both function calls and syscalls
<!--- 
%% end notes %% 
--->

# In-text annotations

 <mark class="hltr hltr-purple">"1. INTRODUCTION"</mark> [Page 2](zotero://open-pdf/library/items/GUK3HW2J?page=2&annotation=C526FMKI)


 <mark class="hltr hltr-yellow">"90 different utility programs on seven versions of UNIX"</mark> [Page 2](zotero://open-pdf/library/items/GUK3HW2J?page=2&annotation=G35PJAXA)


 <mark class="hltr hltr-purple">"2. THE TOOLS"</mark> [Page 4](zotero://open-pdf/library/items/GUK3HW2J?page=4&annotation=LMK8CK3E)


 <mark class="hltr hltr-purple">"2.1. Fuzz: Generating Random Input Strings"</mark> [Page 4](zotero://open-pdf/library/items/GUK3HW2J?page=4&annotation=T2UNZVUG)


 <mark class="hltr hltr-yellow">"Fuzz is capable of producing both printable and control characters, only printable characters, or  either of these groups along with the NULL (zero) character."</mark> [Page 4](zotero://open-pdf/library/items/GUK3HW2J?page=4&annotation=29JAFVA5)

src code suggest the use of only ASCII characters [Page 4](zotero://open-pdf/library/items/GUK3HW2J?page=4&annotation=29JAFVA5)


 <mark class="hltr hltr-purple">"2.2. Ptyjig: Testing Interactive Utilities"</mark> [Page 4](zotero://open-pdf/library/items/GUK3HW2J?page=4&annotation=N7X72AIE)


 <mark class="hltr hltr-purple">"2.3. The Scripts: Automating the Tests"</mark> [Page 5](zotero://open-pdf/library/items/GUK3HW2J?page=5&annotation=3G4LGS2P)


 <mark class="hltr hltr-yellow">"The script checks for the existence of a ‘‘core’’ file after each utility terminates;  indicating the crash of that utility."</mark> [Page 5](zotero://open-pdf/library/items/GUK3HW2J?page=5&annotation=UU3SFPZK)


 <mark class="hltr hltr-purple">"3. THE TESTS"</mark> [Page 5](zotero://open-pdf/library/items/GUK3HW2J?page=5&annotation=KRJBYFXG)


 <mark class="hltr hltr-yellow">"Note that in the last case, we do not specify the correctness of the output."</mark> [Page 5](zotero://open-pdf/library/items/GUK3HW2J?page=5&annotation=5HZVTA7M)


 <mark class="hltr hltr-purple">"4. THE RESULTS AND ANALYSIS"</mark> [Page 9](zotero://open-pdf/library/items/GUK3HW2J?page=9&annotation=8C8MVSPR)


 <mark class="hltr hltr-yellow">"As a side comment, we noticed during our tests that  many of the programs that did not crash would terminate with no error message or with a message that was difficult  to interpret."</mark> [Page 10](zotero://open-pdf/library/items/GUK3HW2J?page=10&annotation=8N68TPCQ)


 <mark class="hltr hltr-yellow">"Hung programs were typically allowed to execute for an additional five  minutes after the hung state was detected."</mark> [Page 10](zotero://open-pdf/library/items/GUK3HW2J?page=10&annotation=EIF644AN)


 <mark class="hltr hltr-yellow">"pointer/array errors, not checking return  codes, input functions, sub-processes, interaction effects, bad error handler, signed characters, race conditions, and  currently undetermined."</mark> [Page 10](zotero://open-pdf/library/items/GUK3HW2J?page=10&annotation=KXEWYA59)


 <mark class="hltr hltr-yellow">"Neither rdc() nor the initial loop check for the end of file.  If the end of file is detected during the middle of a line, this program hangs."</mark> [Page 13](zotero://open-pdf/library/items/GUK3HW2J?page=13&annotation=IN8NQZKK)


 <mark class="hltr hltr-yellow">"The first example triggers the csh’s command history mechanism, says ‘‘repeat the last command that began with ‘o%8f’ ’’."</mark> [Page 15](zotero://open-pdf/library/items/GUK3HW2J?page=15&annotation=Y2SU8RKT)


 <mark class="hltr hltr-yellow">"The (seemingly) infinite loop is the printf() routine’s attempt to pad the  output field with sufficient leading space characters."</mark> [Page 15](zotero://open-pdf/library/items/GUK3HW2J?page=15&annotation=NI3P33TF)


 <mark class="hltr hltr-purple">"5.1. Comments on the Results"</mark> [Page 17](zotero://open-pdf/library/items/GUK3HW2J?page=17&annotation=JMPY9QK2)


 <mark class="hltr hltr-purple">"5.2. Comments on Lurking Bugs"</mark> [Page 18](zotero://open-pdf/library/items/GUK3HW2J?page=18&annotation=4GCW5RXT)


 <mark class="hltr hltr-purple">"5.3. More to Do"</mark> [Page 19](zotero://open-pdf/library/items/GUK3HW2J?page=19&annotation=Z4Z9CVRK)




%% Import Date: 2026-01-28T10:09:35.568-05:00 %%
