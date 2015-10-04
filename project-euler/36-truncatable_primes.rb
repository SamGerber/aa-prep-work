# Truncatable primes
# Problem 37
# The number 3797 has an interesting property. Being prime itself, 
# it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. 
# Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable
# from left to right and right to left.

# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes

# Solution by Sam Gerber

def truncatable_primes
  results = []
  number = 21
  
  while results.count < 11
    results << number
    digits = number.to_s.split("").count
    power = 0
    
    while power < digits
      
      unless  is_prime?(number / (10**power)) &&
              is_prime?(number % (10**(power + 1)))
        results.delete(number)
        break
      end
      
      power += 1
    end
      
    number += 2
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

print truncatable_primes.inject(:+)
