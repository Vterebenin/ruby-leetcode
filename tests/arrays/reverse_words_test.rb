require "minitest/autorun"
require_relative "../../problems/arrays/reverse_words"

class TestReverseWords < Minitest::Test
  def test_standard_input
    assert_equal "world Hello", reverse_words("Hello world"), 'Reversing "Hello world" failed'
  end

  def test_multiple_spaces
    assert_equal "world Hello", reverse_words("  Hello   world  "), 'Handling multiple spaces failed'
  end

  def test_empty_string
    assert_equal "", reverse_words(""), 'Handling empty string failed'
  end

  def test_single_word
    assert_equal "Hello", reverse_words("Hello"), 'Reversing a single word failed'
  end

  def test_trailing_spaces
    assert_equal "world Hello", reverse_words("Hello world  "), 'Handling trailing spaces failed'
  end

  def test_leading_spaces
    assert_equal "world Hello", reverse_words("  Hello world"), 'Handling leading spaces failed'
  end

  def test_spaces_only
    assert_equal "", reverse_words("     "), 'Handling string with only spaces failed'
  end
end
