# https://leetcode.com/problems/string-to-integer-atoi/description

# @param {String} str
# @return {Integer}

# Ruby built-in
# def my_atoi(str)
#   int_min = -2 ** 31
#   int_max = 2 ** 31 - 1
#   num = str.to_i
#   return int_min if num < int_min
#   return int_max if num > int_max
#   num
# end

# 
def my_atoi(str)
  n = str.length
  return 0 if n == 0

  int_min = -2 ** 31
  int_max = 2 ** 31 - 1
  sign = 1
  base = 0
  idx = 0

  # Discards all leading whitespaces
  while str[idx] == ' '
    idx += 1
  end
  
  # sign of the number
  if str[idx] == '-' || str[idx] == '+'
    sign = -1 if str[idx] == '-'
    idx += 1
  end

  # checking for valid input
  while idx < n && is_numeric(str[idx])
    # handle overflow
    # when base can larger than 214748364
    # and last digit can larger than or equal 7
    if (base > int_max / 10) ||
      (base == int_max / 10 && (str[idx].ord - '0'.ord) > int_max % 10)
      return int_max if sign == 1
      return int_min
    end

    base = base * 10 + (str[idx].ord - '0'.ord)
    idx += 1
  end

  base * sign
end

def is_numeric(char)
  return true if char >= '0' && char <= '9'
  false
end

s = '42'
p my_atoi(s)
s = '   -42'
p my_atoi(s)
s = "4193 with words"
p my_atoi(s)
s = "words and 987"
p my_atoi(s)
s = "-91283472332"
p my_atoi(s)
