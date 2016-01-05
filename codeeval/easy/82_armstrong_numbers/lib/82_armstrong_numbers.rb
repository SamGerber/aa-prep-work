def read_integers(filename)
  integers = File.readlines(filename)
  integers.map(&:chomp).map(&:to_i)
end

def digits(integer)
  integer.to_s.split('').map(&:to_i)
end

def is_armstrong?(integer)
  digits = digits(integer)
  digit_sum = digits.inject(0) do |sum, digit|
    sum + digit**(digits.count)
  end
  digit_sum == integer
end

def armstrong_numbers(filename)
  read_integers(filename).each do |integer|
    puts(is_armstrong?(integer).to_s.capitalize)
  end
end


if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  armstrong_numbers(filename)
end
