require "minitest/autorun"
require_relative "../../problems/arrays/remove_duplicates"

class TestRemoveDuplicatesSecond < Minitest::Test
  def test_no_duplicates
    nums = [1, 2, 3]
    assert_equal 3, remove_duplicates(nums)
    assert_equal [1, 2, 3], nums[0...3]
  end

  def test_with_duplicates
    nums = [1, 1, 2]
    assert_equal 2, remove_duplicates(nums)
    assert_equal [1, 2], nums[0...2]
  end

  def test_empty_array
    nums = []
    assert_equal 0, remove_duplicates(nums)
    assert_equal [], nums
  end

  def test_single_element
    nums = [1]
    assert_equal 1, remove_duplicates(nums)
    assert_equal [1], nums
  end

  def test_multiple_duplicates
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    assert_equal 5, remove_duplicates(nums)
    assert_equal [0, 1, 2, 3, 4], nums[0...5]
  end
end
