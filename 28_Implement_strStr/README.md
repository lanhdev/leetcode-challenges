# Implement strStr()

## Problem:
[https://leetcode.com/problems/implement-strstr/description](https://leetcode.com/problems/implement-strstr/description)

Implement [strStr()](http://www.cplusplus.com/reference/cstring/strstr).

Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:
```
Input: haystack = "hello", needle = "ll"
Output: 2
```

Example 2:
```
Input: haystack = "aaaaa", needle = "bba"
Output: -1
```

**Clarification:**

What should we return when `needle` is an empty string? This is a great question to ask during an interview.

For the purpose of this problem, we will return `0` when `needle` is an empty string. This is consistent to C's [strstr()](http://www.cplusplus.com/reference/cstring/strstr) and Java's [indexOf()](https://docs.oracle.com/javase/7/docs/api/java/lang/String.html#indexOf(java.lang.String)).

## Approach:

There are known efficient algorithms such as [Rabin-Karp algorithm](https://en.wikipedia.org/wiki/Rabin%E2%80%93Karp_algorithm), [KMP algorithm](https://en.wikipedia.org/wiki/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm), or the [Boyer-Moore algorithm](https://en.wikipedia.org/wiki/Boyer%E2%80%93Moore_string-search_algorithm). Since these algorithms are usually studied in an advanced algorithms class, it is sufficient to solve it using the most direct method in an interview – The brute force method.

The brute force method is straightforward to implement. We scan the needle with the haystack from its first position and start matching all subsequent letters one by one. If one of the letters does not match, we start over again with the next position in the haystack.

Assume that `n = length of haystack` and `m = length of needle`, then the runtime complexity is `O(nm)`.

Have you considered these scenarios?

i. `needle` or `haystack` is empty. If `needle` is empty, always return `0`. If `haystack` is empty, then there will always be no match (return `–1`) unless needle is also empty which `0` is returned.

ii. `needle`'s length is greater than `haystack`'s length. Should always return `–1`.

iii. `needle` is located at the end of `haystack`. For example, “aaaba” and “ba”. Catch
possible off-by-one errors.

iv. needle occur multiple times in `haystack`. For example, “mississippi” and
“issi”. It should return index `2` as the first match of “issi”.

v. Imagine two very long strings of equal `lengths = n`, `haystack = "aaa...aa"` and `needle = "aaa...ab"`. You should not do more than `n` character comparisons, or else your code will get Time Limit Exceeded in OJ.
