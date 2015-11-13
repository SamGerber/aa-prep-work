# Problem Statement
# Create a method named 'sort_string' which accepts a String and
# rearranges all the words in ascending order, by length.
# Let's not treat the punctuation marks any different than other characters
#  and assume that we will always have single space to separate the words.
#
# Example: Given a string "Sort words in a sentence", it should return
# "a in Sort words sentence".
#
# Note: You can use the sort method to sort an array. Try the documentation
#  at ruby-lang to know more about sort.
#
#  https://rubymonk.com/learning/books/1-ruby-primer/problems/14-sort-string-words

def sort_string(string)
  words = string.split.sort do |word1, word2|
    word1.length <=> word2.length
  end
  words.join(" ")
end
