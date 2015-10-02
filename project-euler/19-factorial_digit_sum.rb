# Factorial digit sum
# Problem 20
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
# Solution by Sam Gerber

# This method returns the sum of digits of a number
def digit_sum(number)
  digits = (number).to_s.split("")
  sum = 0
  digits.each do |digit|
    sum += digit.to_i
  end
  sum
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

puts digit_sum(factorial(100))
