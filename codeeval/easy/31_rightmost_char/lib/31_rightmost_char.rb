def rindex(string, character)
  r_index = string.reverse.index(character)
  return nil if r_index.nil?

  -1 - r_index
end

def read_lines(filename)
  lines = File.readlines(filename)
  lines.map do |line|
    line.chomp.split(',')
  end
end

def rightmost_chars(filename)
  read_lines(filename).each do | line |
    r_index = rindex(*line)
    if r_index.nil?
      puts -1
      next
    end
    puts (line.first.length + r_index)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  rightmost_chars(filename)
end
