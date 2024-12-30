# frozen_string_literal: true

# Solution for is_valid_sudoku in matrix
# @param {TYPE} param
# @return {TYPE}
def is_valid_sudoku(board) # rubocop:disable Naming/PredicateName
  board_length = 8
  board_width = 8

  (0..board_length).each do |line|
    marker_line = {}
    marker_column = {}
    (0..board_width).each do |column|
      line_item = board[line][column]
      column_item = board[column][line]
      return false if marker_line[line_item]
      return false if marker_column[column_item]

      marker_line[line_item] = true if line_item != '.'
      marker_column[column_item] = true if column_item != '.'
    end
  end

  (0..2).each do |cell_number_line|
    (0..2).each do |cell_number_column|
      marker = {}
      (0..2).each do |cell_line|
        (0..2).each do |cell_column|
          line = cell_line + 3 * cell_number_line
          column = cell_column + 3 * cell_number_column
          item = board[line][column]
          return false if marker[item]

          marker[item] = true if item != '.'
        end
      end
    end
  end
  true
end
