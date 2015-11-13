# Learn to Program - Second Edition
# Exercise from Chapter 7 - Flow Control
# Sam Gerber

# Whatever you say to Grandma (whatever you type in), she
# should respond with this:
# =>HUH?! SPEAK UP, SONNY!
# unless you shout it (type it in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:
# =>NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different
# year each time, maybe any year at random between 1930 and 1950.
# You can't stop talking to Grandma until you shout BYE.
# Extended: change your previous program so you have to shout BYE three times
# in a row in order to leave.


class Grandma
  attr_accessor :name
  def initialize(name, loneliness = 1)
    @name = name
    @times_youve_said_bye = 0
    @loneliness = loneliness
  end

  def converse(message)
    if message == "BYE"
      @times_youve_said_bye += 1
      if @times_youve_said_bye == @loneliness
        return "OKAY, BYE NOW!"
      else
        return "THAT'S NICE."
      end
    else
      @times_youve_said_bye = 0
      if message.upcase == message
        return "No, NOT SINCE #{1930 + rand(21)}!"
      else
        return "HUH?! SPEAK UP, SONNY!"
      end
    end
  end
end


def talk_to_a_granny(grandma)
  puts "You're talking to Grandma #{grandma.name}. What do you have to say?"
  while true
    message = gets.chomp
    reply = grandma.converse(message)
    puts reply
    break if reply == "OKAY, BYE NOW!"
  end
end

talk_to_a_granny(Grandma.new("Betsy"))
talk_to_a_granny(Grandma.new("Patsy", 3))