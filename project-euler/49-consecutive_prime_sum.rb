# Consecutive prime sum
# Problem 50
# The prime 41, can be written as the sum of six consecutive primes:

# 41 = 2 + 3 + 5 + 7 + 11 + 13
# This is the longest sum of consecutive primes that adds to a prime below 
# one-hundred.

# The longest sum of consecutive primes below one-thousand that adds to a prime,
# contains 21 terms, and is equal to 953.

# Which prime, below one-million, can be written as the sum of the most 
# consecutive primes?

# Solution by Sam Gerber

# This method returns the prime less than max which can be written as the 
# sum of the most consecutive primes.
def consecutive_prime_sum(max)
  primes = primes(max)
  current_best = [2, 0, 0] # =>[prime, start_index, stop_index]
  
  start_index = 0
  loop do
    test_sum = 0
    (start_index ... primes.count).each do |index|
      test_sum += primes[index]
      if test_sum >= max
        start_index += 1
        break
      end
      if  is_prime?(test_sum) && 
          index - start_index > current_best[2]- current_best[1]
        current_best = [test_sum, start_index, index]
      end
    end
    # "Best of primes starting with #{primes[start_index]}: #{current_best}"
    break if start_index + 1 == primes.count
  end
  [current_best[0], primes[current_best[1] .. current_best[2]]]
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
print consecutive_prime_sum(1_000_000)[0] 
