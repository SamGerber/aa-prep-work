# Coin sums
# Problem 31
# In England the currency is made up of pound, £, and pence, p, 
# and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?

# Solution by Sam Gerber

# This method takes a number p, that is the amount of change to be given, as an
# integer number of the smallest possible coin. Optionally, an array of coin
# denominations (again as integer multiples of the smallest coin) can be passed.
# The return value is the number of combinations of coins possible.
def coin_combos(p, coins = [1, 2, 5, 10, 20, 50, 100, 200])
  coins.sort!.reverse!
  ways = 0
  
  return 1 if p <= coins.last
  
  coins.each do |coin|
    if coin <= p
      ways += coin_combos(p - coin, coins.select{|c| c <= coin})
    end
  end

  ways
end

puts coin_combos(200)