# Find the Duplicate Number

## Problem:
[https://leetcode.com/problems/find-the-duplicate-number/description](https://leetcode.com/problems/find-the-duplicate-number/description)


Given an array nums containing `n + 1` integers where each integer is between `1` and `n` (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

Example 1:
```
Input: [1,3,4,2,2]
Output: 2
```

Example 2:
```
Input: [3,1,3,4,2]
Output: 3
```

**Note:**

- You must not modify the array (assume the array is read only).
- You must use only constant, `O(1)` extra space.
- Your runtime complexity should be less than `O(n^2)`.
- There is only one duplicate number in the array, but it could be repeated more than once.

## Approach:

**[1] Sorting**

Intuition: If the numbers are sorted, then any duplicate numbers will be adjacent in the sorted array.

Algorithm: 

Given the intuition, the algorithm follows fairly simply. First, we sort the array, and then we compare each element to the previous element. Because there is exactly one duplicated element in the array, we know that the array is of at least length 2, and we can return the duplicate element as soon as we find it.

Time complexity: `O(nlogn)`

Space complexity: `O(1)` or `O(n)`

**[2] Hash table**

Intuition: If we store each element as we iterate over the array, we can simply check each element as we iterate over the array.

Algorithm:

In order to achieve linear time complexity, we need to be able to insert elements into a data structure (and look them up) in constant time. A hash table satisfies these constraints nicely, so we iterate over the array and insert each element into `seen`. Before inserting it, we check whether it is already there. If it is, then we found our duplicate, so we return it.

Time complexity: `O(n)`

Space complexity: `O(n)`

**[3] Based on value**

This approach is based on the fact that each integer is between `1` and `n`

Traverse the array. Do following for every index `i` of `A[]`
  
check for sign of `A[abs(A[i])]`

  _-_ if positive then make it negative by `A[abs(A[i])] = -A[abs(A[i])]`

  _-_ else (`A[abs(A[i])]` is negative) this element (i-th element of list) is a repetition

Time complexity: `O(n)`

Space complexity: `O(1)`

## Reference:
* [GeeksforGeeks - Find duplicates in O(n) time and O(1) extra space | Set 1](https://www.geeksforgeeks.org/find-duplicates-in-on-time-and-constant-extra-space)

