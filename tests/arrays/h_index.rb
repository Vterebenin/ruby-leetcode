require "minitest/autorun"
require_relative '../../problems/arrays/h_index'

class TestHIndex < Minitest::Test
  def test_h_index_with_standard_input
    citations = [3, 0, 6, 1, 5]
    assert_equal 3, h_index(citations), "H-Index for [3, 0, 6, 1, 5] should be 3"
  end

  def test_h_index_with_no_citations
    citations = [0, 0, 0, 0]
    assert_equal 0, h_index(citations), "H-Index for [0, 0, 0, 0] should be 0"
  end

  def test_h_index_with_all_high_citations
    citations = [10, 8, 5, 4, 3]
    assert_equal 4, h_index(citations), "H-Index for [10, 8, 5, 4, 3] should be 4"
  end

  def test_h_index_with_all_low_citations
    citations = [1, 1, 1, 1, 1]
    assert_equal 1, h_index(citations), "H-Index for [1, 1, 1, 1, 1] should be 1"
  end

  def test_h_index_with_empty_array
    citations = []
    assert_equal 0, h_index(citations), "H-Index for an empty array should be 0"
  end

  def test_h_index_with_single_element
    citations = [5]
    assert_equal 1, h_index(citations), "H-Index for [5] should be 1"
  end

  def test_h_index_with_mixed_numbers
    citations = [0, 1, 3, 5, 6]
    assert_equal 3, h_index(citations), "H-Index for [0, 1, 3, 5, 6] should be 3"
  end
end
