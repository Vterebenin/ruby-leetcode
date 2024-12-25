# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.length if nums.length < 2

  write_idx = 1
  for read_idx in 1...nums.length
    if nums[read_idx] != nums[read_idx - 1]
      nums[write_idx] = nums[read_idx]
      write_idx += 1
    end
  end

  write_idx
end
