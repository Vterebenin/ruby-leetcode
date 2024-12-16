# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.replace(nums.select { |el| el != val })
    p nums
    nums.length
end

p remove_element([0,1,2, 4,2,0,2, 3], 2)
p remove_element([3, 2, 2, 3], 3)
