# https://leetcode.com/problems/reverse-words-in-a-string/description

class Solution(object):
  def reverseWords(self, s):
    """
    :type s: str
    :rtype: str
    """
    s = s.split()
    s.reverse()
    return ' '.join(s)

class Solution(object):
  def reverseWords(self, s):
    """
    :type s: str
    :rtype: str
    """
    left = -1
    right = len(s) - 1
    res = ''
    while right >= 0:
      while right >= 0 and s[right] == ' ':
        right -= 1
      
      # Add space before add word
      res += ' '
      left = right

      while left >= 0 and s[left] != ' ':
        left -= 1
      
      res += s[left+1:right+1]
      right = left
    # Remove leading and trailing space then return the result
    return res.strip()

s = "the sky is blue"
print(Solution().reverseWords(s))
