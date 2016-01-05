require 'json'

def read_json(filename)
  lines = File.readlines(filename)
  lines = lines.map(&:chomp).reject(&:empty?)

  lines.map do |line|
    JSON.parse(line)
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
