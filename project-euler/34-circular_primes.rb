# Circular primes
# Problem 35
# The number, 197, is called a circular prime because 
# all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100:
# 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

# Solution by Sam Gerber

# This method retuns an array of all primes not exceeding max

def circular_primes(max)
  primes = primes(max)
  results = []
  
  primes.each do |prime|
    results << prime
    length = prime.to_s.length
    shift = 0
    while shift < length
      unless primes.include?(prime.to_s.split("").rotate(shift).join.to_i)
        results.pop
        break
      end
      shift += 1
    end
  end
  
  results  
end

# This method returns an array of the primes not exceeding max
def primes(max)
  primes = []
  number = 2
  
  while number <= max
    primes << number if is_prime? number
    number += 1
  end
  primes
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

puts circular_primes(1_000_000).count