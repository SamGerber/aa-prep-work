# Problem Statement
# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.
#
# Example:
# my_array = MyArray.new([1, 2, 3])
# my_array.sum gives 6
# my_array.sum(10) gives 16
# my_array.sum(0) {|n| n ** 2 } gives 14
# https://rubymonk.com/learning/books/1-ruby-primer/problems/156-sum

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|x| sum += yield(x) }
    sum
  end
end
