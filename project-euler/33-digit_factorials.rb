# Digit factorials
# Problem 34
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of 
# their digits.

# NOTE: as 1! = 1 and 2! = 2 are not sums they are not included.

# Solution by Sam Gerber

# This method is slow, checking every number from 1 to 9_999_999
def digit_factorials
  max = biggest_possible_digit_factorial
  results = []
  
  test_number = 10
  
  while test_number <= max
    results << test_number if is_curious?(test_number)
    test_number += 1
  end
  
  print results
  results.inject(:+)
end

# This method returns true if a number is equal to the sum of the factorials
# of its digits
def is_curious?(number)
  digits = number.to_s.split("")
  digits.each do |digit|
    number -= factorial( digit.to_i )
  end
  return number == 0 ? true : false
end


# This method returns the factorial of a number
def factorial(number)
  result = 1
  while number > 0
    result *= number
    number -= 1
  end
  result
end

# This method returns an upper bound on the numbers which can be written as 
# the sum of the factorials of their digits.
def biggest_possible_digit_factorial
  digits = 1
  
  loop do 
    digits += 1
    break if digits * factorial(9) < ('9' * digits).to_i
  end
  ('9' * digits).to_i
end

puts digit_factorials