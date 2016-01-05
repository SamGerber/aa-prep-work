def bits(integer)
  integer.to_s(2).chars.map(&:to_i)
end

def read_triples(filename)
  triples = File.readlines(filename)
  triples.map do |triple|
    triple.scan(/\d+/).map(&:to_i)
  end
end

def bits_match?(bits, *indices)
  return false unless indices.all? { |e| e.between?(1, bits.length)  }
  selected_bits = indices.map do |index|
    bits[-index]
  end
  selected_bits.uniq.count == 1
end

def process_triples(triples)
  triples.map do |triple|
    triple = triple.clone
    bits_match?( bits(triple.shift), *triple )
  end
end

def bit_positions(filename)
  puts process_triples(read_triples(filename))
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  bit_positions(filename)
end
