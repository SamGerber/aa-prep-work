def sum_digit_squares(number)
  number.to_s.split('').reduce(0) do |sum, digit|
    sum + (digit.to_i)**2
  end
end

def read_integers(filename)
  integers = File.readlines(filename)
  integers.map do |integer|
    integer.chomp.to_i
  end
end

def is_happy?(number)
  history = []
  until history.include?(number)
    history << number
    number = sum_digit_squares(number)
  end

  number == 1
end

def happy_numbers(filename)
  read_integers(filename).each do |integer|
    puts is_happy?(integer) ? 1 : 0
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  happy_numbers(filename)
end
