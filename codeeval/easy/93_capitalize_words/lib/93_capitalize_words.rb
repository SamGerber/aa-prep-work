def read_phrases(filename)
  phrases = File.readlines(filename)
  phrases.map do |phrase|
    phrase.chomp.split
  end
end

def capitalize_word(word)
  letters = word.split('')
  letters.first.upcase!
  letters.join('')
end

def capitalize_words(filename)
  read_phrases(filename).each do |phrase|
    puts(phrase.map { |e| capitalize_word(e) }.join(' '))
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  penultimate_word(filename)
end
