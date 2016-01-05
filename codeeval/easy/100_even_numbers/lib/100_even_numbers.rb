def read_numbers(filename)
  numbers = File.readlines(filename)
  numbers.map do |number|
    number.chomp.to_i
  end
end

def even_numbers(filename)
  numbers = read_numbers(filename)
  numbers.each do |number|
    puts(number.even? ? 1 : 0)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  even_numbers(filename)
end
