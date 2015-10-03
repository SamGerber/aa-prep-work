# Reciprocal cycles
# Problem 26
# A unit fraction contains 1 in the numerator. The decimal representation of the
#  unit fractions with denominators 2 to 10 are given:
#
# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be
# seen that 1/7 has a 6-digit recurring cycle.
#
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle
# in its decimal fraction part.

# Solution by Sam Gerber

def value_of_d
  big_period = [3, 1]
  number = 2

  while number < 1000
    period = long_division(number)
    if period > big_period[1]
      big_period = [number, period]
    end
    number += 1
  end
  big_period
end


def long_division(denominator)

  digits = []
  remainders = []
  does_repeat = false

  loop do

    remainder = remainders.empty? ? 1 : 10 * remainders.last

    while remainder <= denominator
      remainder *= 10
      digits << 0
      remainders << "carry"
    end
    digits << remainder / denominator
    remainder %= denominator
    break if remainder == 0
    if remainders.include?(remainder)
      remainders << remainder
      does_repeat = true
      break
    end
    remainders << remainder
  end
  return 0 unless does_repeat
  repeated_remainder = remainders.pop
  period = remainders.count - remainders.index(repeated_remainder)
end

print value_of_d
