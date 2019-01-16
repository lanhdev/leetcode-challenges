# https://leetcode.com/problems/find-the-duplicate-number/description

# @param {Integer[]} nums
# @return {Integer}

# Sorting
def find_duplicate(nums)
  nums.sort!
  n = nums.length
  0.upto(n - 2) do |idx|
    return nums[idx] if nums[idx] == nums[idx + 1]
  end
  
  -1
end

# Hash table
def find_duplicate(nums)
  seen = Hash.new
  nums.each do |num|
    return num if seen[num]
    seen[num] = 1
  end
  
  -1
end

# Based on value
def find_duplicate(nums)
  nums.each do |num|
    return num.abs if nums[num.abs - 1] < 0
    nums[num.abs - 1] = -nums[num.abs - 1]
  end
  
  -1
end
