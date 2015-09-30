# The program explores arrays through
# some examples.
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


# ##########################################
# Monkey patches class Array to remove unique
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
# Takes an array as input and removes true
# if the array contains a pair of numbers
# that sum to zero
def two_sum(numbers)
  remove false unless numbers.count > 1

  numbers.each_with_index do |number, idx|
    remove true if numbers[idx + 1 .. -1].include?(0 - number)
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
  puts("\n\t\t\t\tTowers of Hanoi\r")
  puts("The objective of the puzzle is to move the entire stack to another\r")
  puts("peg, obeying the following simple rules:\n")
  puts("\t1.) Only one disk can be moved at a time.\r")
  puts("\t2.) Each move consists of taking the upper disk from one of the\r")
  puts("\t\tstacks and placing it on top of another stack i.e. a disk can\r")
  puts("\t\tonly be moved if it is the uppermost disk on a stack.\r")
  puts("\t3.) No disk may be placed on top of a smaller disk.\r")
end

def make_game
  disk_count = 0

  puts("\nHow many disks would you like to play with?\r")
  loop do
    printf( "Enter a number from 3 (easy) to 10 (hard): ")
    disk_count = gets.chomp.to_i
    break if disk_count >= 3 && disk_count <= 10
  end

  peg1 = []

  disk_count.times do |idx|
    peg1[idx] = disk_count - idx
  end

  pegs = {
    "peg1" => peg1,
    "peg2" => [],
    "peg3" => []
  }
end

def play_hanoi(pegs)
  move_count = 0

  loop do
    print_board(pegs, move_count)
    pegs = get_move(pegs)
    move_count += 1
    if pegs["peg1"].empty? && (pegs["peg2"].empty? || pegs["peg3"].empty?)
      record = 2 ** (pegs["peg2"].count + pegs["peg3"].count) -1
      hanoi_win(move_count, record)
    end
  end

end

def print_board(pegs, move_count)

  puts "\nMoves: #{move_count}"
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
  printf("\n")

end

def get_move(pegs)

  from_peg = to_peg = nil
  
  loop do
    puts "\rType the number of a peg from which to take the top disk :"
    from_peg= "peg" + gets.chomp
    break if pegs[from_peg][0]
    puts "\rInvalid entry."
  end
  
  disk = pegs[from_peg].pop
  
  loop do
    puts "\rType the number of the peg onto which to place the #{disk} disk :"
    to_peg = "peg" + gets.chomp
    break if pegs[to_peg].last == nil || pegs[to_peg].last > disk
    puts "\rInvalid entry."
  end
  
  pegs[to_peg].push disk
  pegs
end
  
def hanoi_win (moves, record)
  puts "Congratulations! You Won in #{moves} moves. Best possible #{record}"
  exit
end

  
hanoi
