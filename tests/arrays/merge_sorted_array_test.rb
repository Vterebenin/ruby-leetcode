require "minitest/autorun"
require_relative "../../problems/arrays/merge_sorted_array"

class TestMerge < Minitest::Test
  def test_merge_simple
    nums1 = [1, 2, 3, 0, 0, 0]
    nums2 = [2, 5, 6]
    merge(nums1, 3, nums2, 3)
    assert_equal [1, 2, 2, 3, 5, 6], nums1
  end

  def test_merge_empty_nums2
    nums1 = [1, 2, 3]
    nums2 = []
    merge(nums1, 3, nums2, 0)
    assert_equal [1, 2, 3], nums1
  end

  def test_merge_empty_nums1
    nums1 = [0, 0, 0]
    nums2 = [1, 2, 3]
    merge(nums1, 0, nums2, 3)
    assert_equal [1, 2, 3], nums1
  end

  def test_merge_both_empty
    nums1 = []
    nums2 = []
    merge(nums1, 0, nums2, 0)
    assert_equal [], nums1
  end
end
