# Reverse Words in a String III

## Problem:
[https://leetcode.com/problems/reverse-words-in-a-string-iii/description]
(https://leetcode.com/problems/reverse-words-in-a-string-iii/description)

Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

Example:
```
Input: "Let's take LeetCode contest"
Output: "s'teL ekat edoCteeL tsetnoc"
```

**Note:** In the string, each word is separated by single space and there will not be any extra space in the string.

## Approach:

The problem can be solve by using two pointers. 

[1] Traverse string from the end and skip trailing space if there is any until we encounter last character of a word, store it to pointer `right`

[2] Duplicate pointer `left` from `right`, continue to traverse until we encounter a space, now we have start index and end index of a word. Add it to result

[3] Store value of `left` pointer to `right` pointer and repeat step [1]

Time complexity: `O(n)`
Space complexity: `O(1)`

