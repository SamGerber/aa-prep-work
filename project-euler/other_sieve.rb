	def sieve(max=100)
	  sieve = []
	  (2..max).each { |i| sieve[i] = i }
	  (2..Math.sqrt(max)).each do |i|
	    (i*i).step(max, i) { |j| sieve[j] = nil } if sieve[i]
	  end
	  sieve.compact
	end

puts	sieve(10)
	# => [2, 3, 5, 7]
puts	sieve(987654321).size
	# => 9592