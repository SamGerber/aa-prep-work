def read_sentences(filename)
  sentences = File.readlines(filename).map(&:chomp)
end

def lower_case(filename)
  puts read_sentences(filename).map(&:downcase)
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  lower_case(filename)
end
