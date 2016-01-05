def read_phrases(filename)
  phrases = File.readlines(filename)
  phrases.map do |phrase|
    phrase.chomp
  end
end

def swap_case_words(filename)
  read_phrases(filename).each do |phrase|
    puts(phrase.swapcase)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  swap_case_words(filename)
end
