def read_phrases(filename)
  phrases = File.readlines(filename)
  phrases.map do |phrase|
    phrase.chomp.split
  end
end

def penultimate_word(filename)
  read_phrases(filename).each do |phrase|
    puts phrase[-2]
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  penultimate_word(filename)
end
