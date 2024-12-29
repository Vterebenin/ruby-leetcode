# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../problems/sliding_window/length_of_longest_substring'

class TestLengthOfLongestSubstring < Minitest::Test
  def test_example_1
    assert_equal 3, length_of_longest_substring('abcabcbb')
  end

  def test_example_2
    assert_equal 1, length_of_longest_substring('bbbbb')
  end

  def test_example_3
    assert_equal 3, length_of_longest_substring('pwwkew')
  end

  def test_empty_string
    assert_equal 0, length_of_longest_substring('')
  end

  def test_single_character
    assert_equal 1, length_of_longest_substring('a')
  end

  def test_all_unique_characters
    assert_equal 7, length_of_longest_substring('abcdefg')
  end

  def test_repeated_characters
    assert_equal 2, length_of_longest_substring('aab')
  end
end
