# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(str, num_rows)
  return str if num_rows == 1 || str.empty?

  lines = Array.new(num_rows) { '' }
  current_line = 0
  is_forward = true

  str.each_char do |char|
    lines[current_line] << char
    if current_line == num_rows - 1
      is_forward = false
    elsif current_line.zero?
      is_forward = true
    end
    current_line += is_forward ? 1 : -1
  end

  lines.join
end
