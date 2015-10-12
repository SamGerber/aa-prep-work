# Prime permutations
# Problem 49
# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms 
# increases by 3330, is unusual in two ways: (i) each of the three terms are 
# prime, and, (ii) each of the 4-digit numbers are permutations of one another.

# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, 
# exhibiting this property, but there is one other 4-digit increasing sequence.

# What 12-digit number do you form by
# concatenating the three terms in this sequence?

# Solution by Sam Gerber

def prime_permutations(max)
  primes = primes(max)
  primes.shift while primes.first < 1000
  results = [[]]
  
  primes.each do |prime|
    emirps = prime.to_s.split("").permutation.to_a
    emirps.each do |emirp|
      next if emirp.join.to_i == prime
      next unless is_prime? emirp.join.to_i
      miper = 2 * emirp.join.to_i - prime
      next unless emirps.include?(miper.to_s.split("")) && is_prime?(miper)
      results << [prime, emirp.join.to_i, miper]
    end
  end
  results
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

# This method returns true if number is prime
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

puts "solution"
print prime_permutations(9999)