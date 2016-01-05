def read_lines(filename)
  lines = File.readlines(filename)
  lines.map(&:chomp)
end

def character_frequencies(phrase)
  phrase.downcase!
  phrase.chars.each_with_object(Hash.new(0)) do |char, frequencies|
    if char.between?('a', 'z')
      frequencies[char.to_sym] += 1
    else
      frequencies
    end
  end
end

def max_beauty(phrase)
  frequencies = character_frequencies(phrase).values.sort.reverse
  frequencies.zip((1..26).to_a.reverse).inject(0) do |sum, pair|
    sum + pair.first * pair.last
  end
end

def beautiful_strings(filename)
  read_lines(filename).each do |line|
    puts max_beauty(line)
  end
end


if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  beautiful_strings(filename)
end
