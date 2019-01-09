# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  n = numbers.length
  left = 0
  right = n - 1
  while left < right
    sum = numbers[left] + numbers[right]
    if sum == target
      return [left + 1, right + 1]
    elsif sum > target
      right -= 1
    else
      left += 1
    end
  end

  [-1, -1]
end
