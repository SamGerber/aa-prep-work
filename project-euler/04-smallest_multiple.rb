# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all
# of the numbers from 1 to 20?
# Solution by Sam Gerber

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

# This method returns the smallest positive number that is evenly
# divisible by all of the numbers from min to max.
def smallest_multiple(min, max)
  factors_hash = {}

  (min..max).each do |n|
    factor_hash = {}
    prime_factors(n).each do |factor|
      factor_hash[factor] = factor_hash[factor] ? factor_hash[factor] + 1 : 1
    end
    factor_hash.each do |factor, exponent|
      if factors_hash[factor] == nil || exponent > factors_hash[factor]
        factors_hash[factor] = exponent
      end
   end
 end
 factors_hash.inject(1) do |product, (factor, exponent)|
   product *= factor**exponent
 end
end

puts smallest_multiple(1, 20)
