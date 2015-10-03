# Lexicographic permutations
# Problem 24
# A permutation is an ordered arrangement of objects.
# For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4.
# If all of the permutations are listed numerically or alphabetically, we call
# it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
#
# 012   021   102   120   201   210
#
# What is the millionth lexicographic permutation of the digits
# 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

# Solution by Sam Gerber

# This method returns an array with lexicographically ordered permutations
# of string.
def permutations(string)
  characters = string.chars
  results = []
  characters.permutation do |permutation|
    results << permutation.join
  end
  results.uniq.sort
end

print permutations("0123456789")[1_000_000 - 1]
