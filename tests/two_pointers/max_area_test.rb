# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../problems/two_pointers/max_area'

class MaxAreaTest < Minitest::Test
  def test_max_area
    assert_equal 49, max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
    assert_equal 1, max_area([1, 1])
    assert_equal 16, max_area([4, 3, 2, 1, 4])
    assert_equal 2, max_area([1, 2, 1])
  end

  def test_single_element
    assert_equal 0, max_area([1])
  end

  def test_two_elements
    assert_equal 1, max_area([1, 2])
  end

  def test_large_input
    height = Array.new(10_000) { |i| i + 1 }
    expected = 25_000_000 # (5000 * 5000)
    assert_equal expected, max_area(height)
  end
end
