# The program explores arrays through
# some examples.
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


# ##########################################
# Monkey patches class Array to return unique
# elements in the order in which they first
# appeared.
class Array
  def my_uniq
    result = []
    
    self.each do |element|
      result << element unless result.include?(element)
    end
    result
  end
  
end

# ##########################################
# Takes an array as input and returns true
# if the array contains a pair of numbers 
# that sum to zero
def two_sum(numbers)
  return false unless numbers.count > 1
  
  numbers.each_with_index do |number, idx|
    return true if numbers[idx + 1 .. -1].include?(0 - number)    
  end
  false
end

# ##########################################
# Tower of Hanoi game. 
# The objective of the puzzle is to move the 
# entire stack to another rod, obeying the 
# following simple rules:
# 1.) Only one disk can be moved at a time.
# 2.) Each move consists of taking the upper disk
# =>  from one of the stacks and placing it on 
# =>  top of another stack i.e. a disk can only
# =>  be moved if it is the uppermost disk on a
# =>  stack.
# 3.) No disk may be placed on top of a smaller disk.


$sprites = {
    0 => "            H             ",
    1 => "          [ 1 ]           ",
    2 => "         [[ 2 ]]          ",
    3 => "        [[[ 3 ]]]         ",
    4 => "       [[[[ 4 ]]]]        ",
    5 => "      [[[[[ 5 ]]]]]       ",
    6 => "     [[[[[[ 6 ]]]]]]      ",
    7 => "    [[[[[[[ 7 ]]]]]]]     ",
    8 => "   [[[[[[[[ 8 ]]]]]]]]    ",
    9 => "  [[[[[[[[[ 9 ]]]]]]]]]   ",
   10 => " [[[[[[[[[ 10 ]]]]]]]]]]  ",
}

def hanoi
  print_instructions
  pegs = make_game
  
  play_hanoi(pegs)

end

def print_instructions
  printf("\n\t\t\t\tTowers of Hanoi\r")
  printf("The objective of the puzzle is to move the entire stack to another\r")
  printf("peg, obeying the following simple rules:\r\r")
  printf("\t1.) Only one disk can be moved at a time.\r")
  printf("\t2.) Each move consists of taking the upper disk from one of the\r")
  printf("\t\tstacks and placing it on top of another stack i.e. a disk can\r")
  printf("\t\tonly be moved if it is the uppermost disk on a stack.\r")
  printf("\t3.) No disk may be placed on top of a smaller disk.\r")
end

def make_game
  disc_count = 0
  
  puts("\nHow many discs would you like to play with?\r")
  loop do
    printf( "Enter a number from 3 (easy) to 10 (hard): ")
    disc_count = gets.chomp.to_i
    break if disc_count >= 3 && disc_count <= 10
  end
  
  peg1 = []
  
  disc_count.times do |idx|
    peg1[idx] = disc_count - idx
  end
  
  pegs = {
    "peg1" => peg1,
    "peg2" => [],
    "peg3" => []
  }
end

def play_hanoi(pegs)
  turn_count = 0
  
  #loop do
    print_board(pegs, turn_count)
    #get_move  
  #end
  
end

def print_board(pegs, turn_count)
  #system "clear" || system "cls"
  
  puts "\nTurn: #{turn_count}"
  printf("\r%-10s %-24s %-24s Peg 3\n\n", "", "Peg 1", "Peg 2")
  
  13.times do |height|
    puts("\r ")
    pegs.each do |peg, stack|
      if stack[11 - height] == nil
        printf("%s", $sprites[0])
      else
        printf("%s", $sprites[stack[11 - height]])
      end
    end
  end
  
  printf("\r")
  80.times do
    printf("^")
  end
  printf("\r")
  
end

hanoi