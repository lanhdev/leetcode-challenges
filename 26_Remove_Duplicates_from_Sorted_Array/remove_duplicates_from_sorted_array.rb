# https://leetcode.com/problems/remove-duplicates-from-sorted-array/description

# @param {Integer[]} nums
# @return {Integer}

# Method 1
def remove_duplicates(nums)
  n = nums.length
  return n if n < 2
  temp = []
  j = 0
  (0...n).each do |idx|
    if nums[idx] != nums[idx + 1]
      temp[j] = nums[idx]
      j += 1
    end
  end

  (0..j).each do |idx|
    nums[idx] = temp[idx]
  end

  j
end

# Method 2
def remove_duplicates(nums)
  n = nums.length
  return n if n < 2
  j = 0
  (0...n).each do |idx|
    if nums[idx] != nums[idx + 1]
      nums[j] = nums[idx]
      j += 1
    end
  end

  j
end
