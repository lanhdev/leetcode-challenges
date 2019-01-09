# Two Sum II - Input array is sorted

## Problem:
[https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description)

Given an array of integers that is already ***sorted in ascending order***, find two numbers such that they add up to a specific target number.

The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.

Note:
- Your returned answers (both index1 and index2) are not zero-based.
- You may assume that each input would have exactly one solution and you may not use the same element twice.

Example:
```
Input: numbers = [2,7,11,15], target = 9
Output: [1,2]
Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
```

## Approach:

Based on the fact the array is sorted, we can use Two Pointers Technique to solve the problem

- Initialize two index variables to find the candidate elements in the sorted array.

(a) Initialize first to the leftmost index: `l = 0`

(b) Initialize second  the rightmost index:  `r = ar_size - 1`

- Loop while `l < r`:

  (a) If `A[l] + A[r] == target`  then return `[l + 1, r + 1]`

  (b) Else if `A[l] + A[r] > target` then `r--`

  (c) Else `l++`
 
- No candidates in whole array - return `[-1, -1]`

## Reference:
* [Two Pointers Technique](https://tp-iiita.quora.com/The-Two-Pointer-Algorithm)
* [GeeksforGeeks - Given an array A[] and a number x, check for pair in A[] with sum as x](https://www.geeksforgeeks.org/given-an-array-a-and-a-number-x-check-for-pair-in-a-with-sum-as-x)
