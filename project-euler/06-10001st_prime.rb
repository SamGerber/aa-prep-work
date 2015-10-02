# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11,
# and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
# Solution by Sam Gerber

# This method returns the nth prime
def nth_prime(n)
  counter = 1
  number = 2

  while counter < n
    number += 1
    counter += 1 if is_prime?(number)
  end
  number
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

puts nth_prime(10_001)
