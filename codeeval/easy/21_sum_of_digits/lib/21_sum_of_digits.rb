def read_integers(filename)
  integers = File.readlines(filename).map(&:chomp).map(&:to_i)
end

def digits_sum(number)
  number.to_s.split('').reduce(0) do | sum, glyph |
    sum + glyph.to_i
  end
end

def sum_of_digits(filename)
  read_integers(filename).each do | integer |
    puts digits_sum( integer )
  end
end

def smallest_multiple(x, n)
  result = n
  result += (n.abs) while result < x
  result
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  sum_of_digits(filename)
end
