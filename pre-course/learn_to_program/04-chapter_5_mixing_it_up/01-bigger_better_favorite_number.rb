# Learn to Program - Second Edition
# Exercise from Chapter 5 - Mixing It Up
# Sam Gerber

# Write a program that asks for a person's favorite number.
# Have your program add 1 to the number, and then
# suggest the result as a bigger and better favorite number.

def bigger_better_favorite_number

  puts 'Please type your favorite number.'
  favorite_number = gets.chomp.to_i

  bigger_better_number = favorite_number + 1

  puts "Here's a bigger and better favorite number: #{bigger_better_number}!"
end

bigger_better_favorite_number
