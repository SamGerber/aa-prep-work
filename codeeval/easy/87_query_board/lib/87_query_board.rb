$board = Array.new(256) { Array.new(256) { 0 } }

def read_operations(filename)
  operations = File.readlines(filename)
  operations.map do |operation|
    operation.scan(/[a-zA-Z]+/) << operation.scan(/\d+/).map(&:to_i)
  end
end

def setrow(i, x)
  $board[i].map! do
    x
  end
end

def setcol(i, x)
  $board.each do |row|
    row[i] = x
  end
end

def queryrow(i)
  puts $board[i].inject(:+)
end

def querycol(i)
  puts $board.transpose[i].inject(:+)
end

def query_board(filename)
  read_operations(filename).each do |operation|
    send(operation.first.downcase.to_sym, *(operation.last))
  end
end


if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  query_board(filename)
end
