# Valid Parentheses

## Problem
[https://leetcode.com/problems/valid-parentheses/description](https://leetcode.com/problems/valid-parentheses/description)

Given a string containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:
- Open brackets must be closed by the same type of brackets.
- Open brackets must be closed in the correct order.

Note that an empty string is also considered valid.

Example 1:
```
Input: "()"
Output: true
```
Example 2:
```
Input: "()[]{}"
Output: true
```
Example 3:
```
Input: "(]"
Output: false
```
Example 4:
```
Input: "([)]"
Output: false
```
Example 5:
```
Input: "{[]}"
Output: true
```

## Intuition

Imagine you are writing a small compiler for your college project and one of the tasks (or say sub-tasks) for the compiler would be to detect if the parenthesis are in place or not.

The algorithm we will look at in this article can be then used to process all the parenthesis in the program your compiler is compiling and checking if all the parenthesis are in place. This makes checking if a given string of parenthesis is valid or not, an important programming problem.

The expressions that we will deal with in this problem can consist of three different type of parenthesis: `()`, `{}` and `[]`

Before looking at how we can check if a given expression consisting of these parenthesis is valid or not, let us look at a simpler version of the problem that consists of just one type of parenthesis. So, the expressions we can encounter in this simplified version of the problem are e.g.

```
(((((()))))) -- VALID

()()()()     -- VALID

(((((((()    -- INVALID

((()(())))   -- VALID
```

Let's look at a simple algorithm to deal with this problem:

[1] We process the expression one bracket at a time starting from the left.

[2] Suppose we encounter an opening bracket i.e. (, it may or may not be an invalid expression because there can be a matching ending bracket somewhere in the remaining part of the expression. Here, we simply increment the counter keeping track of left parenthesis till now. `left += 1`

[3] If we encounter a closing bracket, this has two meanings:

  - One, there was no matching opening bracket for this closing bracket and in that case we have an invalid expression. This is the case when `left == 0` i.e. when there are no unmatched left brackets available.
  
  - We had some unmatched opening bracket available to match this closing bracket. This is the case when `left > 0` i.e. we have unmatched left brackets available.

[4] If we encounter a closing bracket i.e. `)` when `left == 0`, then we have an invalid expression on our hands. Else, we decrement `left` thus reducing the number of unmatched left parenthesis available.

[5] Continue processing the string until all parenthesis have been processed.

[6] If in the end we still have unmatched left parenthesis available, this implies an invalid expression.

If we try and follow the same approach for our original problem, then it simply won't work. The reason a simple counter based approach works above is because all the parenthesis are of the same type. So when we encounter a closing bracket, we simply assume a corresponding opening matching bracket to be available i.e. if `left > 0`.

But, in our problem, if we encounter say `]`, we don't really know if there is a corresponding opening `[` available or not. You could say:
```
Why not maintain a separate counter for the different types of parenthesis?
```

This doesn't work because the relative placement of the parenthesis also matters here. e.g.:
```
[{]
```

If we simply keep counters here, then as soon as we encounter the closing square bracket, we would know there is an unmatched opening square bracket available as well. But, the closest unmatched opening bracket available is a curly bracket and not a square bracket and hence the counting approach breaks here.

## Approach

Let us have a look at the algorithm for this problem using stacks as the intermediate data structure.

[1] Initialize a stack S.

[2] Process each bracket of the expression one at a time.

[3] If we encounter an opening bracket `(`, `{` or `[`, we simply push it onto the stack. This means we will process it later, let us simply move onto the sub-expression ahead.

[4] If we encounter a closing bracket `)`, `}` or `]`, then we check the element on top of the stack. If the element at the top of the stack is an opening bracket of the same type, then we pop it off the stack and continue processing. Else, this implies an invalid expression.

[5] In the end, if we are left with a stack still having elements, then this implies an invalid expression.

## Reference:
* [GeeksforGeeks - Check for balanced parentheses in an expression](https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression)
* [LeetCode - Valid Parentheses solution](https://leetcode.com/problems/valid-parentheses/solution)
