# Integer right triangles
# Problem 39
# If p is the perimeter of a right angle triangle with integral 
# length sides, {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

# Solution by Sam Gerber




# This method returns an array of pythagorean triples whose sum does not
# exceed max_perimeter


def pythagorean_triples(max_perimeter)
  triples = {}
  # a = b = c = 0

  (1...max_perimeter).each do |a|
    (a + 1 ...max_perimeter).each do |b|
      c = Math.sqrt(a**2 + b**2)
      if c % 1 == 0
        c = c.to_i
        perimeter = a + b + c
        if triples[perimeter] == nil && perimeter < max_perimeter
          triples[perimeter] = [[a, b, c]]
        elsif perimeter < max_perimeter
          triples[perimeter] << [a, b, c]
        end
      end
    end
  end
  triples
end

hash = pythagorean_triples(1_000)
best = [0, 0]
hash.each do |perimeter, triples|
  if triples.count > best[1]
    best = [perimeter, triples.count]
  end
end
puts best
puts ""
print hash[best[0]]