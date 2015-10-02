def word_unscrambler(str, words)
  words.find_all {|word| str.split("").sort == word.split("").sort}
end
