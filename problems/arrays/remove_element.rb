# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    write_idx = 0
  
    nums.each do |num|
      if num != val
        nums[write_idx] = num
        write_idx += 1
      end
    end
  
    nums.slice!(write_idx, nums.length - write_idx) # Remove excess elements
    write_idx
end
  