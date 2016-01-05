def read_hex_numbers(filename)
  hex_numbers = File.readlines(filename)
  hex_numbers.map(&:chomp)
end

def hex_to_decimal(filename)
  read_hex_numbers(filename).each do |hex_number|
    puts hex_number.to_i(16)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  hex_to_decimal(filename)
end
