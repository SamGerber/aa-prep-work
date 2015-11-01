# Learn to Program - Second Edition
# Exercise from Chapter 2 - Numbers
# Sam Gerber

# Write a program that tells you your age in seconds

def age_in_seconds(day, month, year)
  birthday = Time.local(year, month, day)
  Time.new - birthday
end

puts age_in_seconds(31, 12, 1987) # => 877_000_000