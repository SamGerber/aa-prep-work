# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
#  contains 10 terms. Although it has not been proved yet (Collatz Problem),
#  it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
# Solution by Sam Gerber

def build_collatz(number)
  collatz_numbers = []

  loop do
    collatz_numbers << number
    break if number == 1
    if number.even?
      number /= 2
    else
      number = number * 3 + 1
    end
  end

  collatz_numbers
end

def longest_collatz(max)
  best = {"number" => 1, "length" => 1}
  number = 1

  while number <= max
    length = build_collatz(number).count
    if length > best["length"]
      best["length"] = length
      best["number"] = number
    end
    number += 1
  end
  best
end

a =  longest_collatz(1_000_000)
print a
