MAX_ITEMS = 2

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.length if nums.length < 2

  prev_idx = 0
  item_counter = 0
  buffer = [nums[prev_idx]]

  for current_idx in 1..nums.length - 1
    item = nums[current_idx]
    are_not_equal = nums[prev_idx] != nums[current_idx]
    if are_not_equal
      item_counter = 0
    else
      item_counter += 1
    end
    are_counted = nums[prev_idx] == nums[current_idx] && item_counter < MAX_ITEMS

    buffer.push(item) if are_not_equal || are_counted
    prev_idx += 1
  end
  nums.replace(buffer)
  buffer.length
end

p remove_duplicates([1, 1, 1, 1, 2, 2, 2, 3, 4, 4, 5])
