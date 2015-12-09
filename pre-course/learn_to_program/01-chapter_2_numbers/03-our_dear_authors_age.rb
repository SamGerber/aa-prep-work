# Learn to Program - Second Edition
# Exercise from Chapter 2 - Numbers
# Sam Gerber

# If I am 1_160 million seconds old, how old am I?

def age_in_years(seconds)
  birthday = Time.new - seconds
  Time.new.year - birthday.year
end

puts age_in_years(1_160_000_000) # => 877_000_000