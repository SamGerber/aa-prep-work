# Problem Statement
# Given a sentence, return true if the sentence is a palindrome.
#
# You are supposed to write a method palindrome? to accomplish this task.
#
# Note Ignore whitespace and cases of characters.
#
# Example:
# Given "Never odd or even" the method should return true
#
# https://rubymonk.com/learning/books/1-ruby-primer/problems/143-palindrome

def palindrome?(sentence)
  downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
  downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end
