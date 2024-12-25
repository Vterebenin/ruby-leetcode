require "minitest/autorun"
require_relative "../../problems/arrays/rotate_array"

class TestRotate < Minitest::Test
  def test_standard_rotation
    nums = [1, 2, 3, 4, 5, 6, 7]
    rotate(nums, 3)
    assert_equal [5, 6, 7, 1, 2, 3, 4], nums
  end

  def test_rotation_with_k_greater_than_length
    nums = [1, 2, 3, 4, 5]
    rotate(nums, 7)
    assert_equal [4, 5, 1, 2, 3], nums
  end

  def test_rotation_with_k_zero
    nums = [1, 2, 3, 4]
    rotate(nums, 0)
    assert_equal [1, 2, 3, 4], nums
  end

  def test_single_element_array
    nums = [1]
    rotate(nums, 3)
    assert_equal [1], nums
  end

  def test_rotation_with_negative_k
    nums = [1, 2, 3, 4, 5]
    rotate(nums, -2)
    assert_equal [3, 4, 5, 1, 2], nums
  end
end
