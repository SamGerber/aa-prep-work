# Learn to Program - Second Edition
# Exercise from Chapter 2 - Numbers
# Sam Gerber

# Write a program that tells you how many hours are in a year

def hours_in_year(year)
  hours = 365 * 24
  hours += 24 if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  hours
end

puts hours_in_year 1900 # =>8760
puts hours_in_year 2000 # =>8784
puts hours_in_year 2001 # =>8760
puts hours_in_year 2004 # =>8784