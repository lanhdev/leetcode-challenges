# Reverse Words in a String

## Problem
[https://leetcode.com/problems/reverse-words-in-a-string/description](https://leetcode.com/problems/reverse-words-in-a-string/description)

Given an input string, reverse the string word by word.

Example:
```
Input: "the sky is blue",
Output: "blue is sky the".
```

**Note:**

A word is defined as a sequence of non-space characters.

Input string may contain leading or trailing spaces. However, your reversed string should not contain leading or trailing spaces.

You need to reduce multiple spaces between two words to a single space in the reversed string.

**Follow up:** For C programmers, try to solve it in-place in O(1) space.

## Approach:

Example Questions Candidate Might Ask:
```
Q: What constitutes a word?
A: A sequence of non-space characters constitutes a word.
```
```
Q: Does tab or newline character count as space characters?
A: Assume the input does not contain any tabs or newline characters.
```
```
Q: Could the input string contain leading or trailing spaces?
A: Yes. However, your reversed string should not contain leading or trailing spaces.
```
```
Q: How about multiple spaces between two words?
A: Reduce them to a single space in the reversed string.
```

The problem can be solve by using two pointers. 

[1] Traverse string from the end and skip trailing space if there is any until we encounter last character of a word, store it to pointer `right`

[2] Duplicate pointer `left` from `right`, continue to traverse until we encounter a space, now we have start index and end index of a word. Add it to result

[3] Store value of `left` pointer to `right` pointer and repeat step [1]

Time complexity: `O(n)`
Space complexity: `O(n)`
