def remove_duplicates(list)
  list.uniq.sort
end

def read_lists(filename)
  lists = File.readlines(filename)
  lists.map do |list|
    list.scan(/\d+/).map(&:to_i)
  end
end

def unique_elements(filename)
  read_lists(filename).map do |list|
    puts remove_duplicates(list).join(',')
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  unique_elements(filename)
end
