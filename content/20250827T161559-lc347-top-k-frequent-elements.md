---
title: 347. Top K Frequent Elements
date:  2025-08-27T16:15:59-04:00
tags:
- leetcode
- career
---

Given an integer array return the top k frequent elements
k is always in range of `[1, no. of unique elements]`

# Brute force
- Create a frequency map of the elements
- Sort the keys and find then top k

Time O(nlogn)
Space O(n)

# Better solution
use bucket sort
```python
    dict_ = {}
    # +1 because for [1,1,1] the freq is 3 but creating a list of len()
    # will only allow for index 2
    freq = [[] for _ in range(len(nums) + 1)]
    for num in nums:
        dict_[num] = 1 + dict_.get(num, 0)
    for key, v in dict_.items():
        freq[v].append(key)

    res = []
    for i in range(len(freq) - 1, 0, -1):
        for n in freq[i]:
            res.append(n)
            if len(res) == k:
                return res
```