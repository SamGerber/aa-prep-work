# Pandigital multiples
# Problem 38
# Take the number 192 and multiply it by each of 1, 2, and 3:

# 192 × 1 = 192
# 192 × 2 = 384
# 192 × 3 = 576
# By concatenating each product we get the 1 to 9 pandigital, 192384576. 
# We will call 192384576 the concatenated product of 192 and (1,2,3)

# The same can be achieved by starting with 9 and multiplying by 
# 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the 
# concatenated product of 9 and (1,2,3,4,5).

# What is the largest 1 to 9 pandigital 9-digit number that can be formed as
# the concatenated product of an integer with (1,2, ... , n) where n > 1?

# Solution by Sam Gerber

def pandigital_multiples
  max_integer = 9_999
  biggest_product = 0
  integer = 1
  concatenated = "1"
  
  while integer <= max_integer
    concatenated = integer.to_s
    
    (2..9).each do |n|
      concatenated += (integer * n).to_s
      length = concatenated.length
    
      if  length >= 9  
    
        if  concatenated.split("").uniq.count == length &&
            !concatenated.include?("0") &&
            concatenated.to_i > biggest_product
    
          biggest_product = concatenated.to_i
        end
        
        break
      end
      
    end
    
    integer += 1  
  end
  
  biggest_product
end

puts pandigital_multiples

