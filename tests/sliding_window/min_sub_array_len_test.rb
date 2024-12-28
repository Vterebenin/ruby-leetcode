# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../problems/sliding_window/min_sub_array_len'

class MinSubArrayLenTest < Minitest::Test
  def test_case_one
    assert_equal 2, min_sub_array_len(7, [2, 3, 1, 2, 4, 3])
  end

  def test_case_two
    assert_equal 1, min_sub_array_len(4, [1, 4, 4])
  end

  def test_case_three
    assert_equal 0, min_sub_array_len(22, [1, 1, 1, 1])
  end

  def test_case_four
    assert_equal 3, min_sub_array_len(11, [1, 2, 3, 4, 5])
  end

  def test_case_five
    assert_equal 2, min_sub_array_len(7, [2, 3, 1, 2, 4, 3])
  end

  def test_case_six
    assert_equal 1, min_sub_array_len(6, [10, 2, 3])
  end

  def test_case_seven
    assert_equal 2, min_sub_array_len(15, [5, 1, 3, 5, 10, 7, 4, 9, 2, 8])
  end
end
