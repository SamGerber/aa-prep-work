# Learn to Program - Second Edition
# Exercise from Chapter 2 - Numbers
# Sam Gerber

# Write a program that tells you how many minutes are in a decade

def minutes_in_decade(start_year = 1900)
  days = 0
  start_year.step.take(10).each do |year|
    days += 365
    days += 1 if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  end
  days * 24 * 60 * 60
end

puts minutes_in_decade 1897 # =>315446400
puts minutes_in_decade 2000 # =>315619200
puts minutes_in_decade 2001 # =>315532800
puts minutes_in_decade 2004 # =>315619200