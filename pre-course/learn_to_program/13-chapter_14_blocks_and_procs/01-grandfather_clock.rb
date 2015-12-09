# Learn to Program - Second Edition
# Exercise from Chapter 14 - Blocks and Procs
# Sam Gerber

# Write a method that takes a block and calls it once for each hour that has
# passed today. That way, if I were to pass in the block:
#    do
#      puts "dong!"
#    end
# it would chime (sort of) like a grandfather clock. Test your method out with
# a few different blocks.

#HINT: You can use Time.new.hour to get the current hour. However, this returns
# a number between 0 and 23, so you will have to alter those numbers in order
# to get ordinary clock-face numbers (1 to 12)

def grandfather_clock(&block)
  (Time.new.hour % 12).times do
    block.call
  end
end

chime = Proc.new {puts "dong!"}
grandfather_clock(&chime)

hour = 0
grandfather_clock do
  hour += 1
end
puts hour
# =>  dong!
# =>  dong!
# =>  dong!
# =>  dong!
# =>  dong!
# =>  5
