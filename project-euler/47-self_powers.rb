# Self powers
# Problem 48
# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

# Solution by Sam Gerber

def solution
  sum = 0
  n = 1
  
  while n < 1000
    sum += n**n
    sum %= 10000000000
    n += 1
  end
  sum
end

puts solution
