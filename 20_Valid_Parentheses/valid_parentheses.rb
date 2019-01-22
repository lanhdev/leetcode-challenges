# https://leetcode.com/problems/valid-parentheses/description

# @param {String} s
# @return {Boolean}
def is_valid(s)
  n = s.length
  return true if n == 0
  stack = []
  openning = ['(', '[', '{']
  s.chars.each do |char|
    stack.push(char) if openning.include?(char)

    return false if stack.empty?

    case char
    when ')'
      top = stack.pop
      return false if top == '[' || top == '{'
    when ']'
      top = stack.pop
      return false if top == '(' || top == '{'
    when '}'
      top = stack.pop
      return false if top == '[' || top == '('
    end
  end

  stack.empty?
end
