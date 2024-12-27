# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  start_idx = 0
  end_idx = height.length - 1
  result = 0
  while end_idx > start_idx
    h = [height[start_idx], height[end_idx]].min
    width = end_idx - start_idx

    result = [h * width, result].max

    if height[start_idx] < height[end_idx]
      start_idx += 1
    else
      end_idx -= 1
    end
  end
  result
end
