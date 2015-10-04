# Champernowne's constant
# Problem 40
# An irrational decimal fraction is created by concatenating the positive
# integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, find the value of the 
# following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

# Solution by Sam Gerber

def champernowne
  fractional_part = ""
  integer = 1
  product = 1
  
  while fractional_part.length <= 1_000_000
    fractional_part += integer.to_s
    integer += 1
  end
  
  fractional_part = fractional_part.split("")
  
  7.times do |exponent|
    d = fractional_part[10**exponent - 1].to_i
    puts d
    product *= d
  end
  product
end

puts champernowne
