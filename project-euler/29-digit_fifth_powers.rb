# Digit fifth powers
# Problem 30
# Surprisingly there are only three numbers that can be written as the sum of 
# fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth
# powers of their digits.

# Solution by Sam Gerber

# This method returns an array of all the numbers that can be written as the 
# sum of nth powers of their digits.
def all_power_digits_sums(n)
  max_possible = (9**n) * (n + 1)
  results = []
  
  (10..max_possible).each do |number| 
    results << number if is_power_digit_sum?(number, n)
  end
  
  results
end


# This method checks if a number is a sum of the nth powers of its digits
def is_power_digit_sum?(number, n)
  return false if number < 10
  
  digits = number.to_s.split("")
  number == digits.inject(0){|sum, digit| sum += (digit.to_i)**n}
end

results = all_power_digits_sums(5)
print results
print results.reduce(:+)