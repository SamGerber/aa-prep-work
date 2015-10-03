# Pandigital products
# Problem 32
# We shall say that an n-digit number is pandigital if it makes use of all the 
# digits 1 to n exactly once; for example, 
# the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, 
# containing multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity
# can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only
# include it once in your sum.

# Solution by Sam Gerber

# This method blah
def pandigital_products
  characters = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0]
  equations = characters.permutation.sort.uniq
  results = []
  
  equations.each do |equation|
    star_index = equation.index(0)
    break unless star_index > 0 && star_index < 5
    number1 = equation[0...star_index].join.to_i
    equation = equation[star_index + 1..-1]
    equal_index = equation.index(0)
    break unless equal_index > 0 && equal_index < equation.length - 1
    number2 = equation[0...equal_index].join.to_i
    product = equation[equal_index + 1..-1].join.to_i
    results << [number1, number2, product] if number1 * number2 == product
  end
  
  results
end





# This method returns true if the numbers contain all the
# digits from 1 to n
def is_pandigital?(*numbers, n)
  numbers = numbers.join.split("").sort
  numbers.count == numbers.uniq.count && numbers.first == "1" && numbers.last == n.to_s
end

print pandigital_products
