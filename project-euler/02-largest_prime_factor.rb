# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
# Solution by Sam Gerber

# This method returns the largest prime factor of a number
def largest_prime_factor(number)
  factor = 1

  while factor <= number
    if number % factor == 0
      return number / factor if is_prime?(number / factor)
    end
    factor += 1
  end
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

puts largest_prime_factor(600_851_475_143)
