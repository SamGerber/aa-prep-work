# Learn to Program - Second Edition
# Examples from book
# Sam Gerber

# Chapter 6 - More About Methods

  puts('hello '.+ 'world')
  puts((10.*9).+ 9)
  # =>hello world
  # =>99,

  puts self
  # =>main

# 6.1 Fancy String Methods
  var1 = 'stop'
  var2 = 'deliver repaid desserts'
  var3 - '.....TCELES B HSUP  A magic spell?'

  puts var1.reverse
  puts var2.reverse
  puts var3.reverse
  puts var1
  puts var2
  puts var3

  # =>pots
  # =>stressed diaper reviled
  # =>?lleps cigam A  PUSH B SELECT....
  # =>stop
  # =>deliver repaid desserts
  # =>....TCELES B HSUP  A magic spell?


  puts 'What is your full name?'
  name = gets.chomp
  puts 'Did you know there are ' + name.length + ' characters'
  puts 'in your name, ' + name + '?'

  # =>What is your full name?
  # <=Christopher David Pine
  # =>...no implicit conversion of Fixnum into String...

  puts 'What is your full name?'
  name = gets.chomp
  puts 'Did you know there are ' + name.length.to_s + ' characters'
  puts 'in your name, ' + name + '?'

  # =>What is your full name?
  # <=Christopher David Pine
  # =>Did you know there are 22 characters
  # =>in your name, Christopher David Pine?


  letters = 'aAbBcCdDeE'
  puts letters.upcase
  puts letters.downcase
  puts letters.swapcase
  puts letters.capitalize
  puts ' a'.capitalize
  puts letters

  # =>AABBCCDDEE
  # =>aabbccddee
  # =>AaBbCcDdEe
  # =>Aabbccddee
  # => a
  # =>aAbBcCdDeE

  line_width = 50
  puts(                'Old Mother Hubbard'.center(line_width))
  puts(               'Sat in her cupboard'.center(line_width))
  puts(        'Eating her curds and whey,'.center(line_width))
  puts(          'When along came a spider'.center(line_width))
  puts(           'Who sat down beside her'.center(line_width))
  puts('And scared her poor shoe dog away.'.center(line_width))

  # =>        Old Mother Hubbard
  # =>       Sat in her cupboard
  # =>    Eating her curds and whey,
  # =>     When along came a spider
  # =>     Who sat down beside her
  # =>And scared her poor shoe dog away.

  line_width = 40
  str = '--> text <--'
  puts(str.ljust( line_width))
  puts(str.center(line_width))
  puts(str.rjust( line_width))
  puts(str.ljust(line_width/2) + str.rjust(line_width/2))
  # =>--> text <--
  # =>              --> text <--
  # =>                            --> text <--
  # =>--> text <--                --> text <--


# 6.4 More Arithmetic

  puts 5**2     # =>25
  puts 5**0.5   # =>2.23606797749979
  puts 7/3      # =>2
  puts 7%3      # =>1
  puts 365%7    # =>1

  puts (5 - 2).abs  # =>3
  puts (2 - 5).abs  # =>3


# 6.5 Random Numbers

  puts rand
  puts rand
  puts rand
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  puts(rand(1))
  puts(rand(1))
  puts(rand(1))
  puts(rand(99999999999999999999999999999999999999))
  puts('The weatherman said there is a')
  puts(rand(101).to_s + '% chance of rain,')
  puts('but you can never trust a weatherman')

  # =>0.20269575090363778
  # =>0.7249464742165134
  # =>0.08404700585471359
  # =>31
  # =>12
  # =>89
  # =>0
  # =>0
  # =>0
  # =>67660646352052982757319013217798262397
  # =>The weatherman said there is a
  # =>49% chance of rain,
  # =>but you can never trust a weatherman

  srand 1976
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  puts ''
  srand 1976
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  puts(rand(100))
  # =>50
  # =>21
  # =>80
  # =>15
  # =>
  # =>50
  # =>21
  # =>80
  # =>15


# 6.6 The Math Object

  puts(Math::PI)
  puts(Math::E)
  puts(Math.cos(Math::PI/3))
  puts(Math.tan(Math::PI/4))
  puts(Math.log(Math::E**2))
  puts((1+ Math.sqrt(5))/2)
  # =>3.141592653589793
  # =>2.718281828459045
  # =>0.5000000000000001
  # =>0.9999999999999999
  # =>2.0
  # =>1.618033988749895

