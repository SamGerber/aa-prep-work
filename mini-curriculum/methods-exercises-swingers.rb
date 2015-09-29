!/usr/bin/env ruby
# The program explores methods through
# some examples.
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


# ##########################################
# Simulates a game of Swingers.

# take an array of couple arrays and return the same type of data structure,
# with the couples mixed up. Assume that the first item in the couple array
# must be paired with one of the second items in another couple array and
# vice versa.
def swingers(couples)
  return unless couples.count > 1
  mixups = Array.new(couples.count) { Array.new(2) }
  couples.each_with_index do |couple, idx|
    mixups[idx][0] = couple[0]
    mixups[idx][1] = couple[1]
  end

  loop do
      (couples.count - 1).times do |idx|
        swap_idx = rand((idx + 1) ... couples.count)
        mixups[idx][1], mixups[swap_idx][1]  = mixups[swap_idx][1], mixups[idx][1]
      end

      break unless mixups == couples
    end

  mixups
end

# Method to bang on swingers. Runs swingers on the same couples array
# number times
def swingers_test(number, couples)
  return unless number > 0
  statistics = initialize_statistics(couples)

  number.times do
    mixups = swingers(couples)
    statistics = update_statistics(statistics, mixups)
  end

  print_statistics(statistics, couples)
end

# Method to make an empty table wherein to store the statistics
def initialize_statistics(couples)
  statistics = []

  couples.length.times do |idx|
    statistic = []

    couples.length.times do |jdx|
      statistic << [couples[jdx][1], 0]
    end

    statistics << statistic
  end

  statistics
end

# Method to update statistics table after each run of swingers
def update_statistics(statistics, mixups)
  #print statistics

  mixups.each_with_index do |mixup, idx|
    statistics[idx].each  do |statistic|
      if statistic[0] == mixup[1]
        statistic[1] += 1
      end
    end
  end
  statistics
end

# Method to nicely print the statistics
def print_statistics(statistics, couples)

  # Print Header
  printf "\n%-10s", ""
  statistics[0].each do |statistic|
    printf "%-10s", statistic[0]
  end

  # Print Rows
  statistics.each_with_index do |statistic, idx|
    printf "\n%-10s", couples[idx][0]
    statistic.each do |count|
      printf "%-10s", count[1].to_s
    end
  end
end

# Test data1
couples1 = [
  ["a", "1"],
  ["b", "2"],
  ["c", "3"],
  ["d", "4"],
  ["e", "5"],
  ["f", "6"],
]

# Test data2
couples2 = [
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
]

swingers_test(100, couples1)
