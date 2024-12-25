require "minitest/autorun"
require_relative "../../problems/arrays/remove_element"

class TestRemoveElement < Minitest::Test
  def test_remove_element_basic
    nums = [3, 2, 2, 3]
    val = 3
    length = remove_element(nums, val)
    assert_equal 2, length
    assert_equal [2, 2], nums
  end

  def test_remove_element_no_occurrences
    nums = [1, 2, 3]
    val = 4
    length = remove_element(nums, val)
    assert_equal 3, length
    assert_equal [1, 2, 3], nums
  end

  def test_remove_element_all_occurrences
    nums = [4, 4, 4]
    val = 4
    length = remove_element(nums, val)
    assert_equal 0, length
    assert_equal [], nums
  end

  def test_remove_element_mixed
    nums = [0, 1, 2, 2, 3, 0, 4, 2]
    val = 2
    length = remove_element(nums, val)
    assert_equal 5, length
    assert_equal [0, 1, 3, 0, 4], nums
  end
end
