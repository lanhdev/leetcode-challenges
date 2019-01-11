# https://leetcode.com/problems/implement-strstr/description

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  (0..Float::INFINITY).each do |i|
    (0..Float::INFINITY).each do |j|
      return i if needle[j].nil?
      return -1 if haystack[i + j].nil?
      break if needle[j] != haystack[i + j]
    end
  end 
end

haystack = "hello"
needle = "ll"
p str_str(haystack, needle)

haystack = "mississippi"
needle = "issipi"
p str_str(haystack, needle)
