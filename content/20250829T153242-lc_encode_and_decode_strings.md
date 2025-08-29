---
title: Encode and Decode Strings
date:  2025-08-29T15:32:42-04:00
tags:
- leetcode
- career
---


Encode List of strs to a single str and then decode a single string back to the list of strings

# 1
- Simplest solution is use the length of the string followed by a delimiter to indicate where to find the next string
- `"foo", "bar", "baz"` will become `"3;foo3;bar3;baz"`
- Start with the first char scan till you reach a `;`. That is the length
- Have a counter and decrement for each char you scan when it hits 0 add that string to the list
- Repeat
- The problem with this is that when the lengths of the string becomes large but it is given that they are capped at 200
```python
    def encode(self, strs):
        res = ""
        for str_ in strs:
            res += str(len(str_)) + ";" + str_
        return res

    def decode(self, s):
        res = []
        i = 0
        while i < len(s):
            tmp = ""
            start = i
            length_of_length = 0
            while s[i] != ";":
                tmp += s[i]
                i += 1
                length_of_length += 1
            tmp = int(tmp)
            res.append(
                s[start + length_of_length + 1 : start + length_of_length + tmp + 1]
            )
            i += tmp + 1
        return res

```
