def sum_integers(integers)
  integers.reduce(0) do |sum, number|
    sum + number
  end
end

def read_integers(filename)
  integers = File.readlines(filename)
  integers.map do |integer|
    integer.chomp.to_i
  end
end

def sum_integers_in_file(filename)
  puts sum_integers(read_integers(filename))
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  sum_integers_in_file(filename)
end
