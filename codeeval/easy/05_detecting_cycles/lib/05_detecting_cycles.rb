def read_sequences(filename)
  lines = File.readlines(filename)
  lines.map do |line|
    line.split.map(&:to_i)
  end
end

def find_sequence(list)
  list.each_index do | index |
    [index + 1, list.count - index].min.times do | length |
      left_slice  = list[(index - length)..index]
      right_slice = list[(index + 1)..(index + 1 + length)]
      return left_slice if left_slice == right_slice
    end
  end
  return []
end

def find_sequences(filename)
  lists = read_sequences(filename)
  lists.map do | list |
    find_sequence(list).join(' ')
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  puts find_sequences(filename)
end
