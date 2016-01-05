def fibonacci_term(index)
  sequence = [0, 1]
  (index - 1).times do | index |
    sequence << (sequence[-1] + sequence[-2])
  end
  sequence[index]
end

def read_indices(filename)
  indices = File.readlines(filename)
  indices.map(&:chomp).map(&:to_i)
end

def fibonacci_series(filename)
  read_indices(filename).each do | index |
    puts fibonacci_term(index)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  fibonacci_series(filename)
end
