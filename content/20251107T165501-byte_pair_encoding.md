---
title: Byte Pair Encoding
date:  2025-11-07T16:55:01-05:00
tags:
---
A very layman's term explanation is as follows
- Suppose we have a bunch of bytes. We know that there could be only 256 possible combinations. Suppose we want to reduce this vocab size even further. We combine sequence of bytes that occur together and give them a new id. 
- Consider the following example
```
0000000 114 157 162 145 155 040 151 160 163 165 155 040 144 157 154 157
0000000   L   o   r   e   m       i   p   s   u   m       d   o   l   o
0000010 162 040 163 151 164 040 141 155 145 164 054 040 143 157 156 163
0000010   r       s   i   t       a   m   e   t   ,       c   o   n   s
0000020 145 143 164 145 164 165 162 040 141 144 151 160 151 163 143 151
0000020   e   c   t   e   t   u   r       a   d   i   p   i   s   c   i
```
This the `hexdump` of a text file consisting of lorem ipsum. Suppose we notice that the sequence `155 040` is occuring frequently. They we can create a new id `257` to represent that.