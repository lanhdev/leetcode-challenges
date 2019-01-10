# Valid Palindrome

## Problem:
[https://leetcode.com/problems/valid-palindrome/description](https://leetcode.com/problems/valid-palindrome/description)

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

**Note:** For the purpose of this problem, we define empty string as valid palindrome.

Example 1:
```
Input: "A man, a plan, a canal: Panama"
Output: true
```

Example 2:
```
Input: "race a car"
Output: false
```

## Approach:

The idea is simple, have two pointers – one at the head while the other one at the tail.

Move them towards each other until they meet while skipping non-alphanumeric characters.

Consider the case where given string contains only non-alphanumeric characters. This is a valid palindrome because the empty string is also a valid palindrome.
