# frozen_string_literal: true

require "minitest/autorun"
require_relative "../../problems/two_pointers/two_sum_sorted"


class TwoSumTest < Minitest::Test
  def test_two_sum
    assert_equal [1, 2], two_sum([2, 7, 11, 15], 9)
    assert_equal [1, 3], two_sum([1, 3, 4, 5], 5)
    assert_equal [2, 4], two_sum([1, 2, 3, 4], 6)
  end

  def test_no_solution
    assert_nil two_sum([1, 2, 3, 4], 10)
  end

  def test_single_pair
    assert_equal [1, 2], two_sum([2, 3], 5)
  end

  def test_large_input
    numbers = (1..10_000).to_a
    assert_equal [1, 10_000], two_sum(numbers, 10_001)
  end
end

