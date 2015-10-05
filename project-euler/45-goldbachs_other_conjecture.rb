# Goldbach's other conjecture
# Problem 46
# It was proposed by Christian Goldbach that every odd composite number can be
# written as the sum of a prime and twice a square.

# 9 = 7 + 2×1**2
# 15 = 7 + 2×2**2
# 21 = 3 + 2×3**2
# 25 = 7 + 2×3**2
# 27 = 19 + 2×2**2
# 33 = 31 + 2×1**2

# It turns out that the conjecture was false.

# What is the smallest odd composite that cannot be written as the sum of a
# prime and twice a square?

# Solution by Sam Gerber

def solution
  n = 3
  
  loop do
    unless is_prime? n
      is_sum = false
      max_square = Math.sqrt(n / 2).to_i
      (1 .. max_square).each do |square|
        if is_prime?(n - (2 * square * square))
          is_sum = true
          break
        end
      end
      return n unless is_sum
    end
    
    n += 2
  end
end

# This method returns true if number is prime
def is_prime?(number)
  number = number.abs
  return false if number < 2
  return true if number < 4

  factor = 2
  while factor * factor <= number
    return false if number % factor == 0
    factor += 1
  end

  true
end
    
    
puts "solution"
puts solution