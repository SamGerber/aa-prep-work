# Problem Statement
# Given an array, return true if all the elements are Fixnums.
#
# You need to write array_of_fixnums? method to accomplish this task.
#
# Example:
# Given [1,2,3], the method should return true
#
# https://rubymonk.com/learning/books/1-ruby-primer/problems/148-array_of_fixnum

def array_of_fixnums?(array)
  array.inject(0) {|result, element| result = result && element.is_a?(Fixnum)}
end
