# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  first_array_count = m
  second_array_count = n
  idx = 0
  while first_array_count.positive? && second_array_count.positive?
    if nums1[idx] >= nums2[0]
      second_array_count -= 1
      nums1.insert(idx, nums2.shift)
    else
      first_array_count -= 1
    end
    idx += 1
  end
  nums1.insert(idx, *nums2) if first_array_count.zero?
  nums1[m + n..-1] = []
end