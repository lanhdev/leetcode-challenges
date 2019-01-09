# 3Sum

## Problem:
[https://leetcode.com/problems/3sum/description](https://leetcode.com/problems/3sum/description)

Given an array `nums` of n integers, are there elements *a, b, c* in `nums` such that `a + b + c = 0`? Find all unique triplets in the array which gives the sum of zero.

**Note:**

The solution set must not contain duplicate triplets.

Example:
```
Given array nums = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]
```

## Approach:

**- Sort based algorithm**

`a + b = -c`. 3SUM reduces to 2SUM problem.

**- Handling Duplicates in 2SUM**

Say index `left` and `right` are forming a solution in a sorted array. Now givens `nums[left]`, there is a unique `nums[right]` such that `nums[left] + nums[right] = target`. Therefore, if `nums[left + 1]` is the same as `nums[left]`, then searching in range `left + 1` to `right` will give us a duplicate solution. Thus we must move `left` till `nums[left] != nums[left - 1]` to avoid getting duplicates.

```ruby
while left < right && nums[left] == nums[left + 1]
  left = left + 1
end
```

**- Handling Duplicates in 3SUM**

Imagine we are at index `i` and we have invoked the 2SUM problem from index `i + 1` to end of the array. Now once the 2SUM terminates, we will have a list of all triplets which include `nums[i]`. To avoid duplicates, we must skip all `nums[i]` where `nums[i] == nums[i - 1]`.

```ruby
next if i > 0 && nums[i] == nums[i - 1]
```

## Reference:
* [LeetCode - 3Sum: Python solution with detailed explanation](https://leetcode.com/problems/3sum/discuss/7498/Python-solution-with-detailed-explanation)
* [GeeksforGeeks - Find all triplets with zero sum](https://www.geeksforgeeks.org/find-triplets-array-whose-sum-equal-zero)
