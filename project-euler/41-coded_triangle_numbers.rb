# Coded triangle numbers
# Problem 42
# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so 
# the first ten triangle numbers are:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# By converting each letter in a word to a number corresponding to its 
# alphabetical position and adding these values we form a word value. 
# For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word 
# value is a triangle number then we shall call the word a triangle word.

# Using words.txt, a 16K text file containing nearly two-thousand common 
# English words, how many are triangle words?

def coded_triangle_numbers
  infile  = File.open("./lib/41-words.txt", "r")

  words = infile.read.downcase.gsub("\"","").split(",")
  triangle_numbers = [1]
  counter = 0
  words.each do |word|
    word_value = 0
    
    word.downcase.each_codepoint do |letter|
      word_value += letter - 96
    end
    
    while word_value > triangle_numbers.last
      n = triangle_numbers.count + 1
      triangle_numbers << (n) * (n + 1) / 2
    end
    
    counter += 1 if triangle_numbers.include?(word_value)
  end
    
  infile.close
  counter
end

puts coded_triangle_numbers
