# Learn to Program - Second Edition
# Examples from book
# Sam Gerber

# Chapter 3 - letters

  puts 'Hello, world!'# =>Hello, world!
  puts ''             # =>
  puts 'Good-bye.'    # =>Good-bye.

# 3.1 String Arithmetic
  puts 'I like'  + 'apple pie'   # =>I likeapple pie
  puts 'I like ' + 'apple pie'   # =>I like apple pie
  puts 'I like'  + ' apple pie'  # =>I like apple pie
  
  puts 'blink ' * 4 # => blink blink blink blink

# 3.2 12 vs. '12'
  puts  12  +  12   # =>24
  puts '12' + '12'  # =>1212
  puts '12  +  12'  # =>12  +  12
  
  puts  2  *  5   # =>10
  puts '2' *  5   # =>22222
  puts '2  *  5'  # =>2  *  5
  
# 3.3 Problems
  puts '12' + 12    # => ...no implicit conversion of Fixnum into String
  puts '2' * '5'    # => ...no implicit conversion of String into Integer
  
  
  #Escape characters
  puts 'You\'re swell!'                       # =>You're swell!
  puts 'backslash at the end of a string: \\' # =>backslash at the end of a string: \ 
  puts 'up\\down'                             # =>up\down
  puts 'up\down'                              # =>up\down
  