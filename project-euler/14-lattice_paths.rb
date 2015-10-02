# Lattice paths
# Problem 15
# Starting in the top left corner of a 2×2 grid,
# and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.
#
#
# How many such routes are there through a 20×20 grid?
# Solution by Sam Gerber

def lattice_paths(width, height)
  points = Array.new(height + 1){|i| Array.new(width + 1){|i| 1 }}

  (1..height).each do |row|
    (1..width).each do |column|
      points[row][column] = points[row - 1][column] + points[row][column - 1]
    end
  end

  points.last.last
end

print lattice_paths(20,20)
