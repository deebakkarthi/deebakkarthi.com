---
title: "Levine, Mason, Brown - Lex & Yacc"
date:  2026-09-24T18:46:05-04:00
tags:
mathjax: false
---

[20260924T184756-lex_and_yacc_flashcard](20260924T184756-lex_and_yacc_flashcard.md)

# Chapter 1
- Division into the smallest meaningful units is called *lexing*
- `lex` takes in the a description and produces a C routine called a *lexical analyzer* or a *lexer* or a *scanner*.
- This description is called the *lex specification*. It is usually in form of *regular expressions*.
- `lex` lexer is faster  than any hand written one.
- *Parsing* is the processes of understanding the relationship between the tokens.
- The specification given to the parser is called a *grammar*.
- `yacc` takes a grammar and produces a C routine called a *parser*.
- `yacc` parser is usually not as fast as a hand written one
	- But the ease of use outweighs this performance hit
	- You also cannot be sure that your hand written parser only recognizes the grammar that you provided and nothing else.