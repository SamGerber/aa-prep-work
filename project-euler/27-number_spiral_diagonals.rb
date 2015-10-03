# Number spiral diagonals
# Problem 28
# Starting with the number 1 and moving to the right in a clockwise direction 
# a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral 
# formed in the same way?

# Solution by Sam Gerber

# This method returns the sum of the diagonals of a number spiral of side side.
def number_spiral(max_side)
  number = 1
  sum = 1
  side = 3
  
  while side <= max_side
    4.times do
      number += side - 1
      sum += number
    end
    side += 2
  end
  sum
end

puts number_spiral(1001)