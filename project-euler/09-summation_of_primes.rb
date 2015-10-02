# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
# Solution by Sam Gerber

# This method returns the sum of prime numbers below max
def sum_of_primes(max)
  number = 3
  sum = 2

  while number <= max
    sum += number if is_prime?(number)
    number += 1
  end
  sum
end

def is_prime?(number)
  return false if number < 2
  return true if number < 4

  factor = 2
  while factor * factor <= number
    return false if number % factor == 0
    factor += 1
  end

  true
end

puts sum_of_primes(10)
puts sum_of_primes(2_000_000)
