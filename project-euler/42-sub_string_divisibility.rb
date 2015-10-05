# Sub-string divisibility
# Problem 43
# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of
# each of the digits 0 to 9 in some order, but it also has a rather 
# interesting sub-string divisibility property.

# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. 
# In this way, we note the following:

# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.

# Solution by Sam Gerber

def solution

  d8_10s = []
  d7_10s = []
  d6_10s = []
  d5_10s = []
  d4_10s = []
  d3_10s = []
  d2_10s = []
  d1_10s = []
  17.step(987, 17) do |n| 
    n = n.to_s.split("").to_a
    n = ["0"] + n if n.count == 2
    d8_10s <<  n if n.count == n.uniq.count
  end
  
  d8_10s.uniq.each do |d8_10|
    d8_10[0..1].join.to_i.step(987, 100) do |n|
      d7 = (n/100).to_s
      if n % 13 == 0 && !d8_10.include?(d7)
        d7_10s << [d7] + d8_10
      end
    end
  end

  
  d7_10s.uniq.each do |d7_10|
    d7_10[0..1].join.to_i.step(987, 100) do |n|
      d6 = (n/100).to_s
      if n % 11 == 0 && !d7_10.include?(d6)
        d6_10s << [d6] + d7_10
      end
    end
  end
  
  d6_10s.uniq.each do |d6_10|
    d6_10[0..1].join.to_i.step(987, 100) do |n|
      d5 = (n/100).to_s
      if n % 7 == 0 && !d6_10.include?(d5)
        d5_10s << [d5] + d6_10
      end
    end
  end
  
  d5_10s.uniq.each do |d5_10|
    d5_10[0..1].join.to_i.step(987, 100) do |n|
      d4 = (n/100).to_s
      if n % 5 == 0 && !d5_10.include?(d4)
        d4_10s << [d4] + d5_10
      end
    end
  end
  
  d4_10s.uniq.each do |d4_10|
    d4_10[0..1].join.to_i.step(987, 100) do |n|
      d3 = (n/100).to_s
      if n % 3 == 0 && !d4_10.include?(d3)
        d3_10s << [d3] + d4_10
      end
    end
  end
  
  d3_10s.uniq.each do |d3_10|
    d3_10[0..1].join.to_i.step(987, 100) do |n|
      d2 = (n/100).to_s
      if n % 2 == 0 && !d3_10.include?(d2)
        d2_10s << [d2] + d3_10
      end
    end
  end

  d2_10s.uniq.each do |d2_10|
    10.times do |d1|
      if !d2_10.include?(d1.to_s)
        d1_10s << ([d1] + d2_10).join.to_i
      end
    end
  end
  
  d1_10s
end

numbers = solution
print numbers
print numbers.inject(:+)