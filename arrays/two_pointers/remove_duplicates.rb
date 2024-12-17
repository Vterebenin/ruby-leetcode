# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  if nums.length < 2 
    return nums.length
  end
  
  prev_idx = 0
  buffer = [nums[prev_idx]]
  for current_idx in 1..nums.length - 1
    if nums[prev_idx] != nums[current_idx]
      buffer.push(nums[current_idx])
    end
    prev_idx += 1
  end
  nums.replace(buffer)
  buffer.length
end

p remove_duplicates([1, 2, 2, 3, 4, 4, 5])
