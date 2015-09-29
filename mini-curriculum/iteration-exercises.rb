# The program explores iteration through
# some examples.
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


# ##########################################
# Returns the smallest integer that is both:
# *greater than the floor and
# *evenly divisible by the divisor.

def greater_and_divisible (floor, divisor)
  return false if divisor < 1

  result = floor + 1

  result += 1 while result % divisor > 0

  result
end

puts greater_and_divisible 250, 7


# ##################################
# Prints all factors of each integer
# from 1 to max.
def all_factors(max)
  return false if max < 1

  (1..max).each do |i|
    print_factors i
  end

end


# ############################
# Prints all factors of number

def print_factors(number)
  return false if number < 1
  print "\nFactors of #{number}: "

  (1..number).each do |i|
    print " #{i}" if number % i == 0
  end

end

all_factors 100


# ############################
# Sorts Array with smallest
# number having lowest index
# using bubble sort method.

def bubble_sort(numbers)
  return numbers if numbers.count < 2

  loop do
    did_swap = false

    (numbers.count - 1).times do |index|

      if numbers[index] > numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
        did_swap = true
      end

    end

    break unless did_swap
  end

  return numbers
end

print "\n #{bubble_sort [9, 8, 7, 6, 5, 4, 3, 2, 1]}"


# ########################################################
# Returns an array containing every possible substring
# of string. The array is  sorted like this:
# substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

def substrings(string)
  return string if string.length < 2
  result = []

  (string.length).times do |first_letter|

    (first_letter + 1 .. string.length).each do |substring_length|
        result << string.slice(first_letter, substring_length)
    end

  end

  return result
end

print "\n #{substrings("cat")}"
