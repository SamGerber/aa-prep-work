# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# Solution by Sam Gerber

# This method prints pythagorean_triplets until it finds one where
# a+b+c = n. It then returns a*b*c.
def pythagorean_triplet(n)
  a = b = c = 0

  (1...n).each do |a|
    (a + 1 ...n).each do |b|
      c = Math.sqrt(a**2 + b**2)
      if c % 1 == 0
        c = c.to_i
        puts "#{a}^2 + #{b}^2 = #{c}^2"
        if a + b + c == n
          return a*b*c
        end
      end
    end
  end
  false
end

# Returns an array of all the squares less than or equal to max
def squares(max)
  squares = []
  i = 1

  loop do
    square = i * i
    break if square > max
    squares << square
    i += 1
  end
  squares
end

puts pythagorean_triplet(1000)
