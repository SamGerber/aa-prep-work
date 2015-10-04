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

# This method solves the problem above in the following manner:
# 1.)To shrink the problem, the units places are observed.
# =>There are only 36 ways to write a * b = c % 10 if a, b, and c are uniquely
# =>selected from the digits 1-9. An array of these 36 triples is created by
# =>the method units_arrays.
# 2.)When multiplying an n-digit number by an m-digit number, the smallest
# =>possible result is reached by:
# => 10**(n-1) * 10**(m-1) which reduces to 10**(m + n - 2) which is an
# => (m + n - 1)-digit number.
# =>The largest possible result is reached by:
# =>(10**n - 1) * (10**m - 1) which simplifies to 10**(m+n) - 10**m - 10**n
# =>which is still an (m + n -1)-digit number.
# =>So we can safely say that our equation must take one of two forms,
# =>with a, b, and c being the units digits from the array and # representing
# =>unknown digits:
# =>  (a) * (###b) = (###c)       ie    1-digit * 4-digit = 4-digit  or
# =>  (#a) * (##b) = (###c)       ie    2-digit * 3-digit = 4-digit
# 3.) With six unknown digits for each set of units digits triples (a,b,c),
# =>there are 720 possible permutations of these remaining six digits, and
# =>then we must test each of the two forms above. This brings the required
# =>checks to 36 * 720 * 2 = 51_840.

def pandigital_products
  products = []
  
  # Generate units digits array
  units_digits = units_arrays
  

  # Iterate through each set of units digits
  units_digits.each do |abc|
    other_six_digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    a = other_six_digits.delete(abc[0])
    b = other_six_digits.delete(abc[1])
    c = other_six_digits.delete(abc[2])
  
    all_ways_other_six = other_six_digits.permutation.to_a
    all_ways_other_six.each do |way|
      
      # Check form (#) * (####) = (####)
      one_digit_number    = a
      four_digit_number   = [way[0..2], b].join.to_i
      product  = [way[3..5], c].join.to_i
      
      if one_digit_number * four_digit_number == product
        puts "#{one_digit_number} * #{four_digit_number} = #{product}"
        products << product
      end
      
      # Check form (##) * (###) = (####)
      two_digit_number    = [way[0], a].join.to_i
      three_digit_number  = [way[1..2], b].join.to_i 
      # product is same as above
      if two_digit_number * three_digit_number == product
        puts "#{two_digit_number} * #{three_digit_number} = #{product}"
        products << product
      end  
  
    end
  end
  products.uniq.inject(:+)
end


def units_arrays
  results = []
  
  (1..9).each do |a|
    (1..9).each do |b|
      c = a * b % 10 
      results << [a, b, c] if [a, b, c].uniq.count == 3 && c > 0
    end
  end
  
  results
end

puts pandigital_products

# This method returns true if the numbers contain all the
# digits from 1 to n
def is_pandigital?(*numbers, n)
  numbers = numbers.join.split("").sort
  numbers.count == numbers.uniq.count && numbers.first == "1" && numbers.last == n.to_s
end



