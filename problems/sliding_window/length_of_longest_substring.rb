# frozen_string_literal: true

# @param {String} str
# @return {Integer}
def length_of_longest_substring(str)
  left = 0
  composer = {}
  answer = 0
  str.chars.each_with_index do |char, right|
    left = [left, composer[char] + 1].max if composer.key?(char)
    composer[char] = right
    answer = [answer, (right + 1) - left].max
  end
  answer
end

