# Learn to Program - Second Edition
# Exercise from Chapter 5 - Mixing It Up
# Sam Gerber

# Write a program that asks for a person's first name, then middle, and then
# last. Finally, it should greet the person using their full name.

def full_name_greeting
  puts 'Please type your first name.'
  first_name = gets.chomp
  puts 'Please type your middle name.'
  middle_name = gets.chomp
  puts 'Please type your last name.'
  last_name = gets.chomp

  puts "Hello, #{first_name} #{middle_name} #{last_name}!"
end

full_name_greeting
