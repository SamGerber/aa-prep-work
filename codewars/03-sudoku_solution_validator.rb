def validSolution(board)
  # Validate input

  # Check rows
  board.each do |row|
    return false unless is_one_through_nine? row
  end

  # Check columns
  board.transpose.each do |column|
    return false unless is_one_through_nine? column
  end

  # Check sub-grids
  0.step(by: 3).take(3).each do |row|
    0.step(by: 3).take(3).each do |column|
      subgrid = board[row, 3].map {|subrow| subrow[column, 3]}.flatten
      return false unless is_one_through_nine? subgrid
    end
  end

  true
end

def is_one_through_nine?(nine_numbers)
  return true if nine_numbers.sort == (1..9).each.to_a
  false
end


puts validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2],
               [6, 7, 2, 1, 9, 5, 3, 4, 8],
               [1, 9, 8, 3, 4, 2, 5, 6, 7],
               [8, 5, 9, 7, 6, 1, 4, 2, 3],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 6, 1, 5, 3, 7, 2, 8, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [3, 4, 5, 2, 8, 6, 1, 7, 9]])
