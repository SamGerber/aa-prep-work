# Quadratic primes
# Problem 27
# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive 
# values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 
# is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly 
# divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered, which produces
# 80 primes for the consecutive values n = 0 to 79. The product of the 
# coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression
# that produces the maximum number of primes for consecutive values of n, 
# starting with n = 0.

# Solution by Sam Gerber

# This method iterates through all possible quadratic equations of the form:
# n² + an + b, where |a| < 1000 and |b| < 1000. It returns the coefficients
# as an array [a, b] which returned the maximum number or prime results.
def quadratics(a_abs_max, b_abs_max)
  primes = primes(999)

  results = [0, 0, 0]
  
  (1 - a_abs_max...a_abs_max).each do |a|
    b_index = 0
    b = primes[b_index]
    while b_index < primes.count
      result = [a, b, prime_results(a, b).count]
      results = result if result[2] > results[2]
      result = [a, -b, prime_results(a, -b).count]
      results = result if result[2] > results[2]
      b_index += 1
      b = primes[b_index]
    end
    puts a
  end
  results
end

# This method takes the coefficients of a quadratic equation of the form:
# n² + an + b, and returns an array with the results, beginning from n = 0 
# and terminating when a non-prime result is found
def prime_results(a, b)
  results = []
  n = 0
  
  loop do
    result = n**2 + a * n + b
    if is_prime? result 
      results << result
    else
      break
    end
    n += 1
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
  return false if number.abs < 2
  return true if number.abs < 4

  factor = 2
  while factor * factor <= number.abs
    return false if number % factor == 0
    factor += 1
  end

  true
end

result = quadratics(1_000, 1_000)
puts ""
print result
puts result[0]*result[1]
