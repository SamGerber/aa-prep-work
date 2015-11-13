# Learn to Program - Second Edition
# Examples from book
# Sam Gerber

# Chapter 4 - Variables and Assignment

  puts '...you can say that again...' # =>...you can say that again...
  puts '...you can say that again...' # =>...you can say that again...


  my_string = '...you can say that again...'
  puts my_string                      # =>...you can say that again...
  puts my_string                      # =>...you can say that again...


  name = 'Anya Christina Emmanuella Jenkins Harris'
  puts 'My name is ' + name + '.'
  puts 'Wow! ' + name
  puts 'is a really long name!'

  # =>My name is Anya Christina Emmanuella Jenkins Harris.
  # =>Wow! Anya Christina Emmanuella Jenkins Harris
  # =>is a really long name!


  composer = 'Mozart'
  puts composer + ' was "da bomb" in his day.'

  composer = 'Beethoven'
  puts 'But I prefer ' + composer + ', personally.'

  # =>Mozart was "da bomb" in his day.
  # =>But I prefer Beethoven, personally.


  my_own_var = 'just another ' + 'string'
  puts my_own_var

  my_own_var = 5 * (1+2)
  puts my_own_var

  # =>just another string
  # =>15


  var1 = 8
  var2 = var1
  puts var1
  puts var2

  puts ''
  var1 = 'eight'
  puts var1
  puts var2

  # =>8
  # =>8
  # =>
  # =>eight
  # =>8
