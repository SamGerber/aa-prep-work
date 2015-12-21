def longest_lines(filename)
  lines = File.readlines(filename).map(&:chomp)

  how_many = lines.shift.to_i

  lines.sort! do | short, long |
    long.length <=> short.length
  end

  lines.first(how_many)
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  puts longest_lines(filename)
end
