# https://leetcode.com/problems/reverse-string/description

# @param {String} s
# @return {String}

# Two Pointers
def reverse_string(s)
  left = 0
  right = s.length - 1
  while left < right
    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end
  
  s
end

# Ruby built-in
def reverse_string(s)
  s.reverse
end
