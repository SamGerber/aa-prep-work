# Distinct primes factors
# Problem 47
# The first two consecutive numbers to have two distinct prime factors are:

# 14 = 2 × 7
# 15 = 3 × 5

# The first three consecutive numbers to have three distinct prime factors are:

# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.

# Find the first four consecutive integers to have four distinct prime factors. 
# What is the first of these numbers?

# Solution by Sam Gerber

def distinct_prime_factors(n)
  
  first = 2 ** n
  
  loop do
    result = true
    (first + n - 1).step(first, -1) do |number|
      unless prime_factors(number).uniq.count == n
        first = number + 1
        result = false
        break
      end
    end
    return first if result
  end
end

# This method returns the prime factors of a number in an array.
def prime_factors(number)
  return [] if number < 2
  return [number] if number < 4
  factors = []

  factor = 2
  while factor < number
    break if number % factor == 0
    factor += 1
  end
  factors << factor
  factors.concat(prime_factors(number / factor))
  factors.sort
end
    
    
puts "solution"
puts distinct_prime_factors(4)