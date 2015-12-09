# Learn to Program - Second Edition
# Examples from book
# Sam Gerber

# Chapter 5 - Mixing It Up

  var1 =  2
  var2 = '5'
  puts var1 + var2

  # =>...String can't be coerced into Fixnum

# 5.1 Conversions

  var1 =  2
  var2 = '5'
  puts var1.to_s + var2

  # =>25

  var1 =  2
  var2 = '5'
  puts var1.to_s + var2
  puts var1      + var2.to_i

  # =>25
  # =>7


  puts '15'.to_f                        # =>15.0
  puts '99.999'.to_f                    # =>99.999
  puts '99.999'.to_i                    # =>99
  puts ''                               # =>
  puts '5 is my favorite number!'.to_i  # =>5
  puts 'Who asked you about 5...'.to_i  # =>0
  puts 'Your momma did!'.to_f           # =>0.0
  puts ''                               # =>
  puts 'stringy'.to_s                   # =>stringy
  puts 3.to_i                           # =>3


# 5.2 Another Look at puts

  puts  20
  puts  20.to_s
  puts '20'
  # =>20
  # =>20
  # =>20

# 5.3 The gets Method

  puts gets
  # <=Is there an echo in here?
  # =>Is there an echo in here?

# 5.4 Did It Work?

# 5.5 The chomp Method

  puts 'Hello there, and what\'s your name\?'
  name = gets
  puts 'Your name is ' + name + '? What a lovely name!'
  puts 'Pleased to meet you, ' + name + '. :)'
  # =>Hello there, and what's your name?
  # <=Chris
  # =>Your name is Chris
  # =>? What a lovely name!
  # =>Pleased to meet you, Chris
  # =>. :)

  puts 'Hello there, and what\'s your name\?'
  name = gets.chomp
  puts 'Your name is ' + name + '? What a lovely name!'
  puts 'Pleased to meet you, ' + name + '. :)'
  # =>Hello there, and what's your name?
  # <=Chris
  # =>Your name is Chris? What a lovely name!
  # =>Pleased to meet you, Chris. :)

# 5.7 Mind Your Variables
  my_birth_month  = 'August'
  my_birth_day    = 3
  puts my_birth_month + my_birth_day
  # =>...no implicit conversion of Fixnum into String
