def read_rows(filename)
  rows = File.readlines(filename)
  rows.map!(&:chomp)
  rows.reject!(&:empty?)

  rows.map do |row|
    row = row.split('|')

    row[0] = row.first.split('')
    row[-1] = row.last.split.map(&:to_i)

    row
  end
end

def decode_rows(filename)
  rows = read_rows(filename)
  rows.each do |row|
    puts(row.last.map do |index|
      row.first[index-1]
    end.join)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  decode_rows(filename)
end
