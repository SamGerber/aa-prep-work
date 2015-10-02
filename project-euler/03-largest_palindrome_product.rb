# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers
# is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# Solution by Sam Gerber

# This method returns the largest palindrome made from the product of two
# digit-digit long numbers
def largest_palindrome_product(digit)
  product = (10**(digit) - 1)**2
  floor = (10**(digit - 1))**2
  while product > floor
    return product if is_palindrome?(product) && is_product?(product, digit)
    product -= 1
  end
  false
end

# This method returns true if number reads the same back to front
def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end

# This method returns true if a number is a product of two digit-digit numbers
def is_product?(number, digit)
  return false if number < (10**(digit - 1))**2 || number > (10**(digit) - 1)**2
  factor = 10**(digit - 1)

  while factor * factor < number
    if number % factor == 0
      return true if (number/factor).to_s.length == digit
    end

    factor += 1
  end
  false
end

puts largest_palindrome_product(6)
puts largest_palindrome_product(7)
