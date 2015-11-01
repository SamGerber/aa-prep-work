# Problem Statement
# Create a method 'random_select' which, when given an array of elements
#  (array) and a number (n), returns n randomly selected elements from
#   that array.
#
# Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random
#  numbers from the given array. (Note: those two random numbers may be
#  the same number.) The method should return those random values in a
#  new array.
#
# Calling the method twice should ideally return different sets of values
# (though it may not).
#
# Note: Ruby has the method rand which takes a parameter max. It returns
#  a random number lesser than max.
#
# One more note: Ruby also has a method Array#sample which very concisely
#  solves this problem. Unfortunately, it's too concise! The exercise is
#  almost to write your own Array#sample, so it's been disallowed. Good luck!
#
#  https://rubymonk.com/learning/books/1-ruby-primer/problems/15-select-random-elements-from-an-array
#
def random_select(array, n)
  result = []
  n.times {result << array[rand(n)]}
  result
end
