# Double-base palindromes
# Problem 36
# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, 
# which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base,
# may not include leading zeros.)

# Solution by Sam Gerber

def double_base_palindromes(max)
  number = 1
  results = []

  while number < max
    results << number if is_double_base_palindrome?(number)
    number += 2
  end
  
  results
end


# This method returns true if number reads the same back to front in decimal 
# and binary
def is_double_base_palindrome?(number)
  number.to_s == number.to_s.reverse && number.to_s(2) == number.to_s(2).reverse
end

print double_base_palindromes(1_000_000).inject(:+)