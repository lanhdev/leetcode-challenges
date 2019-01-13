# https://leetcode.com/problems/reverse-words-in-a-string-iii/description

# @param {String} s
# @return {String}

# Ruby built-in
def reverse_words(s)
  s.split(' ').map(&:reverse).join(' ')
end

# Two Pointers
def reverse_words(s)
  left = -1
  right = s.length - 1
  while right >= 0
    while right >= 0 && s[right] == ' '
      right -= 1
    end

    left = right
    while left >= 0 && s[left] != ' '
      left -= 1
    end

    reverse_word(s, left + 1, right)
    right = left
  end

  s
end

def reverse_word(s, left, right)
  while left < right
    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end

  s
end
