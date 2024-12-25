# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  copy = nums.map(&:clone)
  real_counter = k % nums.length
  nums.each_with_index do |_num, index|
    nums[index] = if index < real_counter
                    copy[nums.length - real_counter + index]
                  else
                    copy[index - real_counter]
                  end
  end
end