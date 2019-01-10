# https://leetcode.com/problems/valid-palindrome/description

# Ruby built-in
# class Solution
#   # @param {String} s
#   # @return {Boolean}
#   def is_palindrome(s)
#     s = s.gsub(/\W+/, '').downcase
#     s == s.reverse
#   end
# end

# Two Pointers
class Solution
  # @param {String} s
  # @return {Boolean}
  def is_palindrome(s)
    left = 0
    right = s.length - 1
    while left < right
      head = s[left]
      tail = s[right]
      if !is_alpha_numeric(s[left])
        left += 1
      elsif !is_alpha_numeric(s[right])
        right -= 1
      else
        return false if head.downcase != tail.downcase
        left += 1
        right -= 1
      end
    end

    true
  end

  private

  def is_alpha_numeric(char)
    char =~ /[[:alnum:]]/
  end
end

p Solution.new.is_palindrome('A man, a plan, a canal: Panama')
p Solution.new.is_palindrome('abc')
