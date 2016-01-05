def read_numbers(filename)
  lines = File.readlines(filename)
  lines.map do |line|
    line.chomp.split.map(&:to_f)
  end
end

def simple_sort(filename)
  read_numbers(filename).map do |list|
    puts(list.sort.map { |number| format("%.3f",number) }.join(' '))
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  simple_sort(filename)
end
