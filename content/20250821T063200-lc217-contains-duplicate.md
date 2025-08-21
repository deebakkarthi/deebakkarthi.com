---
title: 217. Contains Duplicate
date:  2025-08-21T06:32:00-04:00
tags: leetcode, career
---
# Question
Given an integer array return `true` if it has a duplicate element else return `false`
# First solution
- Create a dict with keys as the element and count as the value
- Iterate through the elements and set count to 1 on initial seeing
- If an element is already in the dict return true
- Else return false

> Time complexity of O(n)
> 	For a distinct list you have to traverse the whole array

> Space complexity of O(n)
> 	Again for a distinct list you have to create a dict the same size as the array

```python
def solution(nums):
    dict_ = {}
    for i in nums:
        if i not in dict_:
            dict_[i] = 1
        else:
            return True
    return False
```
# Other ideas
- Sort the array traverse and find where `arr[i]==arr[i-1]` starting from `i=1`
	- This will be `O(nlogn)` but constant space complexity

# Neetcode Solution
```python
return len(set(nums)) == len(nums)
```