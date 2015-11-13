# Learn to Program - Second Edition
# Exercise from Chapter 7 - Flow Control
# Sam Gerber

# Write a program that asks for a starting year and an ending
# year and then puts all the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by 4 (like 1984
# and 2004). However, years divisible by 100 are *not* leap years (such as
# 1800 and 1900) unless they are also divisible by 400 (such as 1600 and
# 2000, which were in fact leap years). What a mess!


class Fixnum

  def leap_year?
    (self % 4 == 0 && self % 100 != 0) || self % 400 == 0
  end
end

1600.upto(2000) do |year|
  puts "#{year} was #{'not ' unless year.leap_year?}a leap year"
end