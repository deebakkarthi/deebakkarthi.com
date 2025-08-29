---
title: 238. Product of Array Except Self
date:  2025-08-29T15:56:45-04:00
tags:
- leetcode
- career
---

Given an array nums return an array answer such that answer[i] is product of all terms excepts `nums[i]` i.e  $\prod(nums)/nums[i]$
Do this in O(n) without using division


# 1
- The most brute force is to iterate the array each time and leave out i and multiply. This is quadratic
- Brute force is multiplying the subarrays each time and storing them to reuse?
- O(1) space and O(n) time is to multiply everything and to divide using each element and store the result. But multiplying is prohibited. So have to emulate that without actually using div

multiply the prefix and suffix 
`answer[i] = Prod(nums[:i])*Prod(nums[i+1:])`
Two passes
Two arrays
pref and suff
This is O(n) time but O(n) space

```python
    prefix = [0 for _ in nums]
    sufix = [0 for _ in nums]
    tmp = 1
    for idx, val in enumerate(nums):
        prefix[idx] = tmp
        tmp *= val
    i = 0
    tmp = 1
    for num in nums[::-1]:
        sufix[(len(nums) - 1) - i] = tmp
        tmp *= num
        i += 1

    answer = [1 for _ in nums]
    for idx, _ in enumerate(answer):
        answer[idx] = prefix[idx] * sufix[idx]

    return answer
```


# `O(1)` space complexity

We could just store the prefixes in the answer array and just multiply with the suffixes as we calculate them

```python
    answer = [1 for _ in nums]
    tmp = 1
    for idx, _ in enumerate(nums):
        answer[idx] = tmp
        tmp *= nums[idx]
    i = 0
    tmp = 1
    for num in nums[::-1]:
        answer[(len(nums) - 1) - i] *= tmp
        tmp *= num
        i += 1
    return answer
```