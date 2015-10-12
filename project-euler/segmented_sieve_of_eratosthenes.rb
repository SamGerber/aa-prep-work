# This method retuns an array of all primes not exceeding max
def primes(max)
  # Initialize arrays
  puts ""
  primes = []
  first_primes = []
  
  # Divide range 2 through n into sqrt(n) + 1 segments
  sqrt_max = Math.sqrt(max).to_i
  block_size = max / (sqrt_max + 1)
  
  # Find primes up to sqrt(n)
  puts "Find primes up to #{sqrt_max}..."
  (2..sqrt_max + 1).each{|n| first_primes << n}
  
  first_primes = sieve(first_primes)
  primes += first_primes

  (1 .. sqrt_max).each do |block_number|
    block = []
    puts "Building primes in #{block_number + 1} of #{sqrt_max + 1}..."
    (block_number * block_size .. (block_number + 1) * block_size).each do |n|
      block << n
    end
    primes += sieve(first_primes, block)
  end
  
  puts "Parsing results..."
  primes.uniq
end


def sieve(primes = nil, block)
  index = 0
  loop do  
    number = (primes == nil) ? block[index] : primes[index]
    multiplicand = [2, block.first / number].max
    
    loop do
      multiple = number * multiplicand
      break if multiple > block.last
      block.delete(multiple)
      multiplicand += 1
    end
    
    index += 1
    break if index >= (primes == nil ? block.count : primes.count)
  end
  
  block
end

puts ""
print primes(7654321).count
puts ""