# https://leetcode.com/problems/reverse-string/description

# @param {String} s
# @return {String}

def reverse_string(s)
  Solution.two_pointers(s)
  Solution.recursive(s, 0, s.length - 1)
  Solution.ruby_reverse(s)
end

module Solution
  # Two Pointers
  def self.two_pointers(str)
    left = 0
    right = str.length - 1
    while left < right
      str[left], str[right] = str[right], str[left]
      left += 1
      right -= 1
    end

    str
  end

  # Recursive
  def self.recursive(str, left, right)
    return if left > right
    str[left], str[right] = str[right], str[left]
    recursive(str, left + 1, right - 1)
  end

  # Ruby built-in
  def self.ruby_reverse(str)
    str.reverse
  end
end
