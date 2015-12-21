require "05_detecting_cycles.rb"

# Given a sequence, write a program to detect cycles within it.
#
# INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a filename
# containing a sequence of numbers (space delimited). The file can have
# multiple such lines. E.g
#
#
# 2 0 6 3 1 6 3 1 6 3 1
# 3 4 8 0 11 9 7 2 5 6 10 1 49 49 49 49
# 1 2 3 1 2 3 1 2 3
# OUTPUT SAMPLE:
#
# Print to stdout the first cycle you find in each sequence. Ensure that
# there are no trailing empty spaces on each line you print. E.g.
#
# 6 3 1
# 49
# 1 2 3
# The cycle detection problem is explained more widely on wiki
# Constraints:
# The elements of the sequence are integers in range [0, 99]
# The length of the sequence is in range [0, 50]

describe "The read_sequences method" do
  filename = 'assets/05_detecting_cycles_sample.txt'
  sequences = [[2, 0, 6, 3, 1, 6, 3, 1, 6, 3, 1],
               [3, 4, 8, 0, 11, 9, 7, 2, 5, 6, 10, 1, 49, 49, 49, 49],
               [1, 2, 3, 1, 2, 3, 1, 2, 3]]

  it "correctly reads sequences given a filename" do
    expect(read_sequences(filename)).to eq(sequences)
  end
end

describe "The find_sequence method" do
  it "finds sequences of length 1" do
    expect(find_sequence([1,1])).to eq([1])
    expect(find_sequence([1,1,1,1])).to eq([1])
    expect(find_sequence([2,1,1])).to eq([1])
  end

  it "finds sequences of length 2" do
    expect(find_sequence([1,2,1,2])).to eq([1,2])
    expect(find_sequence([3,2,1,2,1])).to eq([2,1])
  end

  it "doesn't find sequences where it shouldn't" do
    expect(find_sequence([1,2,3,2])).to eq([])
    expect(find_sequence([3,2,1,3,1])).to eq([])
  end

  it "correctly analyzes long sequences" do
    sequence_one   = [2, 0, 6, 3, 1, 6, 3, 1, 6, 3, 1]
    answer___one   = [6, 3, 1]
    sequence_two   = [3, 4, 8, 0, 11, 9, 7, 2, 5, 6, 10, 1, 49, 49, 49, 49]
    answer___two   = [49]
    sequence_three = [1, 2, 3, 1, 2, 3, 1, 2, 3]
    answer___three = [1, 2, 3]

    expect(find_sequence(  sequence_one)).to eq(  answer___one)
    expect(find_sequence(  sequence_two)).to eq(  answer___two)
    expect(find_sequence(sequence_three)).to eq(answer___three)
  end
end
