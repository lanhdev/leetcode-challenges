# https://leetcode.com/problems/two-sum/description

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Brute force
def two_sum(nums, target)
  n = nums.length
  (0...n).each do |i|
    (i+1...n).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end

  [-1, -1]
end

# Two-pass hash table
def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index { |num, idx| hash[num] = idx }

  nums.each_with_index do |num, idx|
    diff = target - num
    return [idx, hash[diff]] if hash[diff] && hash[diff] != idx 
  end

  [-1, -1]
end

# One-pass hash table
def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |num, idx|
    diff = target - num
    return [hash[diff], idx] if hash[diff]
    hash[num] = idx
  end

  [-1, -1]
end
