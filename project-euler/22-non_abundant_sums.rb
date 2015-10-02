# Non-abundant sums
# Problem 23
# A perfect number is a number for which the sum of its proper divisors is
# exactly equal to the number. For example, the sum of the proper divisors of
# 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is
# less than n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
# number that can be written as the sum of two abundant numbers is 24.
# By mathematical analysis, it can be shown that all integers greater than 28123
# can be written as the sum of two abundant numbers. However, this upper limit
# cannot be reduced any further by analysis even though it is known that the
# greatest number that cannot be expressed as the sum of two abundant numbers is
# less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.

# Solution by Sam Gerber

# This method returns the sum of all positive integers which cannot be
# written as the sum of two abundant numbers.
def non_abundant_sums(max)
  sum = (0..max).inject(:+)
  sum -= abundant_sums(max).inject(:+)
  sum
end

# This method returns an array of all the numbers that are sums of two
# abundant numbers and that do not exceed max.
def abundant_sums(max)
  abundant_sums = []
  abundant_numbers = abundant_numbers(max)
  abundant_numbers.each_with_index do |x, i|
    (i...abundant_numbers.count).each do |j|
      y = abundant_numbers[j]
      abundant_sums << x + y unless x + y > max
    end
  end
  abundant_sums.uniq.sort
end

# This method returns an array containing the abundant numbers not exceeding max
def abundant_numbers(max)
  numbers = []
  test_number = 12

  while test_number <= max
    if proper_divisors(test_number).reduce(:+) > test_number
      numbers << test_number
    end
    test_number += 1
  end
  numbers
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

  factors.sort.uniq
end

print non_abundant_sums(28123)
