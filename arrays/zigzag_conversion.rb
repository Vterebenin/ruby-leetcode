# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(str, num_rows)
  lines = []
  for _ in 0..num_rows - 1 do
    lines.push([])
  end
  p lines
  is_forward = true
  current_line = 0
  str.split('').each do |char|
    p char
    p lines[current_line]
    p current_line
    lines[current_line].push(char)
    if num_rows == 1
      current_line = 0
    else
      current_line += is_forward ? 1 : -1
    end
    is_forward = !is_forward if current_line == num_rows - 1 || current_line.zero?
  end
  p lines
  lines.join('')
end
p convert('PAYPALISHIRING', 3)
p convert('AB', 1)
