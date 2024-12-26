# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  start_idx = 0
  end_idx = numbers.length - 1
  while end_idx > start_idx
    result = numbers[start_idx] + numbers[end_idx]
    return [start_idx + 1, end_idx + 1] if result == target

    if result < target
      start_idx += 1
    else
      end_idx -= 1
    end
  end
end
