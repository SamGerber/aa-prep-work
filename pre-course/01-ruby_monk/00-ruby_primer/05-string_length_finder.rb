# Problem Statement
# Given an array containing some strings, return an array containing the
# length of those strings.
#
# You are supposed to write a method named 'length_finder' to accomplish
# this task.
#
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4,5,3]

#https://rubymonk.com/learning/books/1-ruby-primer/problems/5-string-length-finder


def length_finder(words)
  lengths = {}
  words.each do |word|
    lengths[word] = word.length
  end
  lengths.values
end
