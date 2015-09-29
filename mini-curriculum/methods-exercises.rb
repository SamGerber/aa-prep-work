# The program explores methods through
# some examples.
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


# ##########################################
# Simulates a game of Rock, Paper, Scissors.

# takes a string (either "Rock", "Paper" or "Scissors") as a parameter
# and return the computer's choice, and the outcome of the match.
def rps(player)
  player = player.capitalize
  return unless player == "Rock" || player == "Paper" || player == "Scissors"

  computer = random_rps
  "#{computer}, #{rps_outcome(player, computer)}"
end

# Takes no input and randomly returns either "Rock", "Paper", or "Scissors"
def random_rps
  return case rand(1 ... 4)
         when 1 then "Rock"
         when 2 then "Paper"
         when 3 then "Scissors"
         end
end

# Takes two inputs and returns the outcome: "Win", "lose", or "Draw"
def rps_outcome(player, computer)
  fists = [player.capitalize, computer.capitalize]
  fists.each do |fist|
    return unless (fist == "Rock" || fist == "Paper" || fist == "Scissors")
  end

  return "Draw" if player == computer

  return case fists
         when ["Rock", "Scissors"]   then "Win"
         when ["Paper", "Rock"]      then "Win"
         when ["Scissors", "Paper"]  then "Win"
         else "Lose"
         end
end

# Calls rps number times and print the input and output
# returns the final wins-losses for each position taken
# in the form [["Rock", -2],["Paper", 2], ["Scissors", -4]]
def rps_tester(number)
  return if number < 1
  standings = [["Rock", 0],["Paper", 0], ["Scissors", 0]]

  number.times do
    fist = random_rps
    outcome = rps(fist).split(", ")
    print("\n#{fist} vs #{outcome[0]}: #{outcome[1]}")
    standings = update_standings(standings, fist, outcome[1])
  end

  print_standings(standings, number)
end

# Updates an array called standings of the form
# [["Rock", -2],["Paper", 2], ["Scissors", -4]]
# taking into account the thrown hand and the outcome
def update_standings(standings, fist, outcome)
  standings.each do |standing|
    if standing[0] == fist
      standing[1] += 1 if outcome == "Win"
      standing[1] -= 1 if outcome == "Lose"
    end
  end
  standings
end


# Prints standings nicely
def print_standings(standings, number)
  print "\n\nIn #{number} tests,"
  standings.each do |standing|
    print "\nThrowing #{standing[0]} resulted in "
    print "#{standing[1]} more wins than losses"  if standing[1] > 0
    print "#{-standing[1]} more losses than wins" if standing[1] < 0
    print "the same number of wins and losses"    if standing[1] == 0
  end
end

# Play 1000 games of rps!
rps_tester(1000)
