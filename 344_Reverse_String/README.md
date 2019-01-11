# Reverse String

## Problem
[https://leetcode.com/problems/reverse-string/description](https://leetcode.com/problems/reverse-string/description)

Write a function that takes a string as input and returns the string reversed.

Example 1:
```
Input: "hello"
Output: "olleh"
```

Example 2:
```
Input: "A man, a plan, a canal: Panama"
Output: "amanaP :lanac a ,nalp a ,nam A"
```

## Approach:

Iterative Swapping Using Two Pointers

One pointer is pointing at the start of the string while the other pointer is pointing at the end of the string.

Both pointers will keep swapping its element and travel towards each other.

The algorithm basically simulates rotation of a string with respect to its midpoint.

Time Complexity: `O(n)` where `n` is the total number character in the input string.

Space Complexity: `O(n)` space is used where `n` is the total number character in the input string. Space is needed to transform string to character array. 


