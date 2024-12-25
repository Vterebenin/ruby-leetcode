require "minitest/autorun"
require_relative "../../problems/arrays/remove_duplicates_2"

class TestRemoveDuplicates < Minitest::Test
  def test_no_duplicates
    nums = [1, 2, 3]
    assert_equal 3, remove_duplicates_second(nums)
    assert_equal [1, 2, 3], nums[0...3]
  end

  def test_with_duplicates
    nums = [1, 1, 2]
    assert_equal 3, remove_duplicates_second(nums)
    assert_equal [1, 1, 2], nums[0...3]
  end

  def test_multiple_duplicates
    nums = [1, 1, 1, 2, 2, 2, 3, 3, 3]
    assert_equal 6, remove_duplicates_second(nums)
    assert_equal [1, 1, 2, 2, 3], nums[0...5]
  end

  def test_single_element
    nums = [1]
    assert_equal 1, remove_duplicates_second(nums)
    assert_equal [1], nums
  end

  def test_empty_array
    nums = []
    assert_equal 0, remove_duplicates_second(nums)
    assert_equal [], nums
  end
end
