# Digit cancelling fractions
# Problem 33
# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in 
# attempting to simplify it may incorrectly believe that 49/98 = 4/8,
# which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction, less than
# one in value, and containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms, 
# find the value of the denominator.

# Solution by Sam Gerber

def fractions
  fractions = []
  top_product = 1
  bottom_product = 1
  
  (10..99).each do |numerator|
    (10..99).each do |denominator|
      ratio = numerator.fdiv(denominator)
      if numerator % 10 == denominator / 10 && numerator != denominator
        if (numerator / 10).fdiv(denominator % 10) == ratio
          top_product     *= numerator
          bottom_product  *= denominator
          fractions << [numerator, denominator]
        end
      end
    end
  end
  print fractions
  puts ""
  puts top_product
  puts bottom_product
  reduce_fraction(top_product,bottom_product)
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


# This method doesn't work
def reduce_fraction(numerator, denominator)
  numerators   = prime_factors(numerator)
  denominators = prime_factors(denominator)
  duplicates   = []
  numerators.each do |top|
    duplicates << denominators.delete(top)
  end
  duplicates.each do |duplicate|
    numerators.delete(duplicate) unless duplicate == nil
  end
  a = numerators.reduce(:*)
  b = denominators.reduce(:*)
  [a, b]
end

print fractions