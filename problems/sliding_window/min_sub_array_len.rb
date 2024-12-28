# frozen_string_literal: true

# Solution for min_sub_array_len in sliding_window
# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
  start_idx = 0
  sum = 0
  min_length = Float::INFINITY

  nums.each_with_index do |num, end_idx|
    sum += num

    while sum >= target
      min_length = [min_length, end_idx - start_idx + 1].min
      sum -= nums[start_idx]
      start_idx += 1
    end
  end

  min_length == Float::INFINITY ? 0 : min_length
end

