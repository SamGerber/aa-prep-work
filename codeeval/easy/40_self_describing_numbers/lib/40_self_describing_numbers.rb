def read_integers(filename)
  integers = File.readlines(filename)
  integers.map do |integer|
    integer.chomp.to_i
  end
end

def digits(number)
  number.to_s.split('').map(&:to_i)
end

def describes_self?(number)
  digits = digits(number)
  digits.each_with_index.inject(true) do | truthiness, (digit, index) |
    truthiness && digits.count(index) == digit
  end
end

def self_describing_numbers(filename)
  read_integers(filename).each do |integer|
    puts describes_self?(integer) ? 1 : 0
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  self_describing_numbers(filename)
end
