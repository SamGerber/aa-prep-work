def multiples_of_a_number(filename)
  read_lists(filename).each do |list|
    puts smallest_multiple(*list)
  end
end

def read_lists(filename)
  lists = File.readlines(filename)
  lists.map do |list|
    list.scan(/\d+/).map(&:to_i)
  end
end

def smallest_multiple(x, n)
  result = n
  result += (n.abs) while result < x
  result
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  multiples_of_a_number(filename)
end
