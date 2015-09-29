def ordered_vowel_words(str)
  result = []
  
  words = str.downcase.split
  words.each do |word|
    result << word if ordered_vowel_word?(word)
  end
  
  result.join(" ")
end

def ordered_vowel_word?(word)
  vowel = "a"
  
  word.each_char do |char|
    
    if is_vowel?(char)  
      return false if char < vowel
      vowel = char 
    end
    
  end
  
  true
end

def is_vowel?(char)
  char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
end