Point = Struct.new(:x, :y)
Line = Struct.new(:start, :stop) do
  def length
    del_x = stop.x - start.x
    del_y = stop.y - start.y
    Math.sqrt(del_x**2 + del_y**2).to_i
  end
end


def read_lines(filename)
  lines = File.readlines(filename)
  lines.map do |line|
    coordinates = line.scan(/-*\d+/)
    start_point = Point.new(*coordinates.shift(2).map(&:to_i))
    end_point = Point.new(*coordinates.shift(2).map(&:to_i))
    Line.new(start_point, end_point)
  end
end

def calculate_distances(filename)
  lines = read_lines(filename)
  lines.each do |line|
    puts line.length
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  calculate_distances(filename)
end
