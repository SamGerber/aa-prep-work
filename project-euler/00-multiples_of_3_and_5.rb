# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
# Solution by Sam Gerber

# This method returns the sum of all multiples of 3 or 5 smaller than max
def multiples(max)
  (1...max).inject(0) do |sum, n|
    sum += n if n % 3 == 0 || n % 5 == 0
    sum
  end
end

puts multiples 1000
