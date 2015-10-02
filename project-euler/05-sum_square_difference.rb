# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#   1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)**2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first
# one hundred natural numbers and the square of the sum.
# Solution by Sam Gerber

# This method returns the difference between the sum of the squares
# and the square of the sum of the natural numbers between min and max.
def sum_square_difference(min, max)
  difference = 0
  (min..max).each do |number1|
    (min..max).each do |number2|
      difference += number1 * number2
    end
    difference -= number1 * number1
  end
  difference
end

puts sum_square_difference(1, 100)
