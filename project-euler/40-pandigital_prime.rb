# Pandigital prime
# Problem 41
# We shall say that an n-digit number is pandigital if it makes use of all the 
# digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is 
# also prime.

# What is the largest n-digit pandigital prime that exists?

# Solution by Sam Gerber

# Note: all numbers whose digits sum to a multiple of 3 are divisible by 3.
# The following are the sums of the digits of n-digit pandigital numbers:
# 2-digits: 3   = 1 + 2                               DIVISIBLE BY 3!
# 3-digits: 6   = 1 + 2 + 3                           DIVISIBLE BY 3!
# 4-digits: 10  = 1 + 2 + 3 + 4                       24 possible primes
# 5-digits: 15  = 1 + 2 + 3 + 4 + 5                   DIVISIBLE BY 3!
# 6-digits: 21  = 1 + 2 + 3 + 4 + 5 + 6               DIVISIBLE BY 3!
# 7-digits: 28  = 1 + 2 + 3 + 4 + 5 + 6 + 7           5040 possible primes
# 8-digits: 36  = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8       DIVISIBLE BY 3!
# 9-digits: 45  = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9   DIVISIBLE BY 3!

# With this knowledge, we simply build and sort an array of all possible
# 4- or 7-digit pandigital numbers and beginning at the end, return the
# first prime we find.

def pandigital_prime
  pandigitals = []
  [4,3,2,1].permutation{|p| pandigitals << p.join.to_i}
  [7,6,5,4,3,2,1].permutation{|p| pandigitals << p.join.to_i}
  pandigitals.sort!.reverse!

  pandigitals.each{|number| return number if is_prime?(number)}
end


# This method returns true if a number is prime
def is_prime?(number)
  number = number.abs
  return false if number < 2
  return true if number < 4

  factor = 2
  while factor * factor <= number
    return false if number % factor == 0
    factor += 1
  end

  true
end

puts pandigital_prime
