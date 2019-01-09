# https://leetcode.com/problems/3sum/description

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  res = []
  nums.sort!
  n = nums.length
  0.upto(n - 2).each do |idx|
    # Handling Duplicates in 3SUM
    next if idx > 0 && nums[idx] == nums[idx - 1]

    left = idx + 1
    right = n - 1
    while left < right
      sum = nums[idx] + nums[left] + nums[right]
      if sum < 0
        left += 1
      elsif sum > 0
        right -= 1
      else
        res.push([nums[idx], nums[left], nums[right]])
        # Handling Duplicates in 2SUM
        while left < right && nums[left] == nums[left + 1]
          left += 1
        end
        # Handling Duplicates in 2SUM
        while left < right && nums[right] == nums[right - 1]
          right -= 1
        end

        left += 1
        right -= 1
      end
    end
  end

  res
end
