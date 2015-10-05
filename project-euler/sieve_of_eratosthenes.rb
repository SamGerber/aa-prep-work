# This method retuns an array of all primes not exceeding max
def primes(max)
  primes = []
  (2..max).each{|n| primes << n}
  
  index = 0
  loop do  
    number = primes[index]
    multiplicand = 2
    
    loop do
      multiple = number * multiplicand
      break if multiple > primes.last
      primes.delete(multiple)
      multiplicand += 1
    end
    
    index += 1
    break if index >= primes.count
  end
  
  primes
end

a = primes(54_321)

puts a.last