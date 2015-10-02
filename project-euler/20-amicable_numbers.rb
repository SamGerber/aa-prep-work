# Amicable numbers
# Problem 21
# Let d(n) be defined as the sum of proper divisors of n (numbers less
# than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
#  each of a and b are called amicable numbers.
#
# For example,
# the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
#  therefore d(220) = 284.
#
#  The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10_000.
# Solution by Sam Gerber

# This method sums amicable numbers under max
def sum_amicables(max)
  number = 2
  sum = 0
  while number < max
    sum += number if is_amicable?(number)
    number += 1
  end
  sum
end

# This method returns true if a number is an amicable number
def is_amicable?(number)
  partner = proper_divisors(number).reduce(:+)
  return false if partner == number
  number == proper_divisors(partner).reduce(:+)
end

# This method returns the proper divisors of a number in an array.
def proper_divisors(number)
  factors = [1]

  factor = 2
  while factor * factor <= number
    if number % factor == 0
      factors << factor
      factors << number / factor
    end
    factor += 1
  end

  factors.sort
end


puts sum_amicables(1_000)
