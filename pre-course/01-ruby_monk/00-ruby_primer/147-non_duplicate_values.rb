# Problem Statement
# Given an Array, return the elements that are present exactly once in
# the array.
#
# You need to write a method called non_duplicated_values to accomplish
# this task.
#
# Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]
#
# https://rubymonk.com/learning/books/1-ruby-primer/problems/147-non-duplicate-values

def non_duplicated_values(values)
  results = []
  values.each do |value|
    results << value if values.count(value) == 1
  end
  results
end
