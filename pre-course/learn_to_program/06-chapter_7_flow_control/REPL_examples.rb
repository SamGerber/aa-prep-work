# Learn to Program - Second Edition
# Examples from book
# Sam Gerber

# Chapter 7 - Flow Control

# Comparison Methods
  puts  1 > 2 # =>false
  puts  1 < 2 # =>true

  puts  5 >= 5 # =>true
  puts  5 <= 4 # =>false

  puts 1 == 1 # =>true
  puts 2 != 1 # =>true

  puts 'cat' < 'dog'  # =>true

  puts 'bug lady'           < 'Xander'          # =>false
  puts 'bug lady'.downcase  < 'Xander'.downcase # =>true

  puts  2  <  10  # =>true
  puts '2' < '10' # =>false


# 7.2 Branching

  puts 'Hello, what\'s your name?'
  name = gets.chomp
  puts 'Hello, ' + name + '.'
  if name == 'Chris'
    puts 'What a lovely name!'
  end
  # =>Hello, what's your name?
  # <=Chris
  # =>Hello, Chris.
  # =>What a lovely name!

  # =>Hello, what's your name?
  # <=Chewbacca
  # =>Hello, Chewbacca.


  puts 'I am a fortune-teller. Tell me your name:'
  name = gets.chomp

  if name == 'Chris'
    puts 'I see great things in your future.'
  else
    puts 'Your future is...oh my! Look at the time!'
    puts 'I really have to go, sorry!'
  end
  # =>I am a fortune-teller. Tell me your name:
  # <=Chris
  # =>I see great things in your future.

  # =>I am a fortune-teller. Tell me your name:
  # <=Boromir
  # =>Your future is...oh my! Look at the time!
  # =>I really have to go, sorry!

  # =>I am a fortune-teller. Tell me your name:
  # <=Ringo
  # =>Your future is...oh my! Look at the time!
  # =>I really have to go, sorry!

  puts 'Hello, and welcome to seventh grade English.'
  puts 'My name is Mrs. Gabbard. And your name is....?'
  name = gets.chomp

  if name == name.capitalize
    puts 'Please take a seat, ' + name + '.'
  else
    puts name + '? You mean ' + name.capitalize + ', right?'
    puts 'Don\'t you even know how to spell your name??'
    reply = gets.chomp

    if reply.doncase == 'yes'
      puts 'Hmmph! Well, sit down!'
    else
      puts 'GET OUT!!'
    end
  end
  # =>Hello, and welcome to seventh grade English.
  # =>My name is Mrs. Gabbard. And your name is....?
  # <=chris
  # =>chris? You mean Chris, right?
  # =>Don't you even know how to spell your name??
  # =>yes
  # =>Hmmph! Well, sit down!

  # =>Hello, and welcome to seventh grade English.
  # =>My name is Mrs. Gabbard. And your name is....?
  # <=Chris
  # =>Please take a seat, Chris.

# 7.3 Looping

  input = ''
  while input != 'bye'
    puts input
    input = gets.chomp
  end
  puts 'Come again soon!'
  # <=Hello?
  # =>Hello?
  # <=Hi!
  # =>Hi!
  # <=Very nice to meet you.
  # =>Very nice to meet you.
  # <=Oh...how sweet!
  # =>Oh...how sweet!
  # <=bye
  # =>Come again soon!

  while 'Spike' > 'Angel'
    input = gets.chomp
    puts input
    if input == 'bye'
      break
    end
  end

  puts 'Come again soon!'

  # <=Hi, and your name is...
  # =>Hi, and your name is...
  # <=Cute. And original.
  # =>Cute. And original.
  # <=What, are you like... my little brother?!
  # =>What, are you like... my little brother?!
  # <=bye
  # =>bye
  # =>Come again soon!

  while true
    input = gets.chomp
    puts input
    if input == 'bye'
      break
    end
  end

  puts 'Come again soon!'
  # <=Hey.
  # =>Hey.
  # <=You again?!
  # =>You again?!
  # <=bye
  # =>bye
  # =>Come again soon!


# 7.4 A Little Bit of Logic
  puts 'Hello, what\'s your name?'
  name = gets.chomp
  puts 'Hello, ' + name + '.'

  if name == 'Chris'
    puts 'What a lovely name!'
  else
    if name == 'Katy'
      puts 'What a lovely name!'
    end
  end
  # =>Hello, what's your name?
  # <=Katy
  # =>Hello, Katy.
  # =>What a lovely name!


  puts 'Hello, what\'s your name?'
  name = gets.chomp
  puts 'Hello, ' + name + '.'

  if name == 'Chris'
    puts 'What a lovely name!'
  elsif name == 'Katy'
    puts 'What a lovely name!'
  end
  # =>Hello, what's your name?
  # <=Katy
  # =>Hello, Katy.
  # =>What a lovely name!

  puts 'Hello, what\'s your name?'
  name = gets.chomp
  puts 'Hello, ' + name + '.'

  if name == 'Chris' || name == 'Katy'
    puts 'What a lovely name!'
  end
  # =>Hello, what's your name?
  # <=Katy
  # =>Hello, Katy.
  # =>What a lovely name!


  i_am_chris  = true
  i_am_purple = false
  i_like_beer = true
  i_eat_rocks = false

  puts i_am_chris  && i_like_beer  # =>true
  puts i_like_beer && i_eat_rocks  # =>false
  puts i_am_purple && i_like_beer  # =>false
  puts i_am_purple && i_eat_rocks  # =>false

  puts i_am_chris  || i_like_beer  # =>true
  puts i_like_beer || i_eat_rocks  # =>true
  puts i_am_purple || i_like_beer  # =>true
  puts i_am_purple || i_eat_rocks  # =>false

  puts !i_am_purple                # =>true
  puts !i_am_chris                 # =>false

  #

  while true
    puts 'What would you like to ask C to do?'
    request = gets.chomp

    puts 'You say, "C, please ' + request + '"'

    puts 'C\'s response:'
    puts '"C '    + request + '."'
    puts '"Papa ' + request + ', too."'
    puts '"Mama ' + request + ', too."'
    puts '"Ruby ' + request + ', too."'
    puts '"Nono ' + request + ', too."'
    puts '"Emma ' + request + ', too."'
    puts

    if request == 'stop'
      break
    end
  end
  # => What would you like to ask C to do?
  # <= eat
  # => You say, "C, please eat"
  # => C's response:
  # => "C eat."
  # => "Papa eat, too."
  # => "Mama eat, too."
  # => "Ruby eat, too."
  # => "Nono eat, too."
  # => "Emma eat, too."

  # => What would you like to ask C to do?
  # <= go potty
  # => You say, "C, please go potty"
  # => C's response:
  # => "C go potty."
  # => "Papa go potty, too."
  # => "Mama go potty, too."
  # => "Ruby go potty, too."
  # => "Nono go potty, too."
  # => "Emma go potty, too."

  # => What would you like to ask C to do?
  # <= hush
  # => You say, "C, please hush"
  # => C's response:
  # => "C hush."
  # => "Papa hush, too."
  # => "Mama hush, too."
  # => "Ruby hush, too."
  # => "Nono hush, too."
  # => "Emma hush, too."

  # => What would you like to ask C to do?
  # <= stop
  # => You say, "C, please stop"
  # => C's response:
  # => "C stop."
  # => "Papa stop, too."
  # => "Mama stop, too."
  # => "Ruby stop, too."
  # => "Nono stop, too."
  # => "Emma stop, too."
