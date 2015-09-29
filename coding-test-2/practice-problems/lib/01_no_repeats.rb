# The function, `no_repeats(year_start, year_end)`,  takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


def no_repeats(year_start, year_end)
  return if year_start > year_end
  results = []
  
  (year_start .. year_end).each do |year|
    results << year if no_repeat?(year) 
  end
  
  results
end


# Helper function, `no_repeat?(year)` returns true/false
# if a given year doesn't have a repeat.

def no_repeat?(year)
  digits = year.to_s.split("")
  counter = Array.new(10, 0) 
  
  digits.each do |digit|
    counter[digit.to_i] += 1
    return false if counter[digit.to_i] > 1
  end
  
  true
end