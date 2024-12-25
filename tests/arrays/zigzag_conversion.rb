require "minitest/autorun"
require_relative "../../problems/arrays/zigzag_conversion"

class TestConvert < Minitest::Test
  def test_standard_case
    assert_equal "PAHNAPLSIIGYIR", convert("PAYPALISHIRING", 3)
  end

  def test_single_row
    assert_equal "PAYPALISHIRING", convert("PAYPALISHIRING", 1)
  end

  def test_two_rows
    assert_equal "PYAIHRNAPLSIIG", convert("PAYPALISHIRING", 2)
  end

  def test_empty_string
    assert_equal "", convert("", 3)
  end

  def test_string_shorter_than_rows
    assert_equal "ABC", convert("ABC", 5)
  end

  def test_large_number_of_rows
    assert_equal "A", convert("A", 100)
  end
end
