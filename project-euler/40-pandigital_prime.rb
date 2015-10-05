# Pandigital prime
# Problem 41
# We shall say that an n-digit number is pandigital if it makes use of all the 
# digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is 
# also prime.

# What is the largest n-digit pandigital prime that exists?

# Solution by Sam Gerber

def pandigital_prime
  primes = primes(987_654_321)
  puts "primes done"
  
  loop do
    number = primes.pop
    digits = number.to_s.length
    return number if is_pandigital?(number, digits)
  end
end


# This method retuns an array of all primes not exceeding max
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

# This method returns true if the numbers contain all the
# digits from 1 to n
def is_pandigital?(*numbers, n)
  numbers = numbers.join.split("").sort
  numbers.count == numbers.uniq.count && numbers.first == "1" && numbers.last == n.to_s
end

puts pandigital_prime
