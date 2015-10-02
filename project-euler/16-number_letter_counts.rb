# Number letter counts
# Problem 17
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
#  then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens.
# For example, 342 (three hundred and forty-two) contains 23 letters
# and 115 (one hundred and fifteen) contains 20 letters.
# The use of "and" when writing out numbers is in compliance with British usage.

# This method counts the number of letters required to write out each Number
# from min to max, inclusive. Non-alphabetical characters are not counted
def letters_to_count(min, max)
  count = 0
  (min..max).each do |number|
    count += to_words(number).downcase.count("a-z")
  end
  count
end

# This method turns any number not exceeding 999_999_999_999_999 and not less
# than -999_999_999_999_999 into a string of the number written out in the
# english alphabet
def to_words(number)
  negative = false
  written_out = ""
  dictionary = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1_000 => "thousand",
    1_000_000 => "million",
    1_000_000_000 => "billion",
    1_000_000_000_000 => "trillion"
  }

  if number < 0
    negative = true
    number *= -1
  end
  if number <= 20
    written_out = dictionary[number]
  elsif number < 100
    digits = number.divmod(10)
    written_out = dictionary[digits[0] * 10]
    written_out.concat(digits[1] == 0 ? "" : "-#{to_words(digits[1])}")
  elsif number < 1_000
    digits = number.divmod(100)
    written_out = "#{dictionary[digits[0]]} #{dictionary[100]}"
    written_out.concat(digits[1] == 0 ? "" : " and #{to_words(digits[1])}")
  elsif number < 1_000_000
    digits = number.divmod(1_000)
    written_out = "#{to_words(digits[0])} #{dictionary[1_000]}"
    written_out.concat(digits[1] == 0 ? "" : ", #{to_words(digits[1])}")
  elsif number < 1_000_000_000
    digits = number.divmod(1_000_000)
    written_out = "#{to_words(digits[0])} #{dictionary[1_000_000]}"
    written_out.concat(digits[1] == 0 ? "" : ", #{to_words(digits[1])}")
  elsif number < 1_000_000_000_000
    digits = number.divmod(1_000_000_000)
    written_out = "#{to_words(digits[0])} #{dictionary[1_000_000_000]}"
    written_out.concat(digits[1] == 0 ? "" : ", #{to_words(digits[1])}")
  else 1_000_000_000_000
    digits = number.divmod(1_000_000_000_000)
    written_out = "#{to_words(digits[0])} #{dictionary[1_000_000_000_000]}"
    written_out.concat(digits[1] == 0 ? "" : ", #{to_words(digits[1])}")
  end

  if negative
    written_out = "negative ".concat(written_out)
  end

  written_out
end

puts letters_to_count(1, 1_000)
