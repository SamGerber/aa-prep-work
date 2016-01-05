def set_intersection(filename)
  read_lists(filename).each do |sets|
    puts (intersection(*sets).join(','))
  end
end

def read_lists(filename)
  lines = File.readlines(filename)
  lines.map do |line|
    line.split(';').map do | set |
      set.scan(/\d+/).map(&:to_i)
    end
  end
end

def intersection(*sets)
  sets.reduce do | intersection, set |
    intersection & set
  end.sort
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  set_intersection(filename)
end
