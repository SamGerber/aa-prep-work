def morse_encode(str)
  morse_hash = load_morse
  str = str.downcase.split
  morse_str = []
  
  str.each do |word|
    morse_str << to_morse(word, morse_hash)
  end

  morse_str.join("  ")
end

def to_morse(word, morse_hash)
  morse_word = ""
  
  word.each_char do |char|
    morse_word += morse_hash[char] + " "
  end
  
  morse_word.chomp(" ")
end

def load_morse
    
  morse_hash ={
    "a" => ".-",         "b" => "-...",       "c" => "-.-.",       "d" => "-..",
    "e" => ".",          "f" => "..-.",       "g" => "--.",        "h" => "....",
    "i" => "..",         "j" => ".---",       "k" => "-.-",        "l" => ".-..",
    "m" => "--",         "n" => "-.",         "o" => "---",        "p" => ".--.",
    "q" => "--.-",       "r" => ".-.",        "s" => "...",        "t" => "-",
    "u" => "..-",        "v" => "...-",       "w" => ".--",        "x" => "-..-",
    "y" => "-.--",       "z" => "--.."
    }
    
end