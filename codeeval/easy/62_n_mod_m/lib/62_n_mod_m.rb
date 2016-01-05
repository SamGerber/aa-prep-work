def read_pairs(filename)
  pairs = File.readlines(filename)
  pairs.map do |pair|
    pair.chomp.scan(/\d+/).map(&:to_i)
  end
end

def modulus(n, m)
  while n >= m
    n -= m
  end
  n
end

def n_mod_m(filename)
  read_pairs(filename).each do |pair|
    puts modulus(*pair)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  n_mod_m(filename)
end
