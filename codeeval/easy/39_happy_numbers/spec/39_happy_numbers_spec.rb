require "39_happy_numbers"

# # HAPPY NUMBERS
# ## CHALLENGE DESCRIPTION:
#
#
# A happy number is defined by the following process.
# Starting with any positive integer, replace the number by
# the sum of the squares of its digits, and repeat the process
# until the number equals 1 (where it will stay), or it loops
# endlessly in a cycle which does not include 1. Those numbers
# for which this process ends in 1 are happy numbers, while those
# that do not end in 1 are unhappy numbers.
#
# ### INPUT SAMPLE:
#
# The first argument is the pathname to a file which contains
# test data, one test case per line. Each line contains a
# positive integer. E.g.
#
#     1
#     7
#     22
#
# ### OUTPUT SAMPLE:
#
# If the number is a happy number, print out 1. If not, print out 0. E.g
#
#     1
#     1
#     0
#
# For the curious, here's why 7 is a happy number:
# 7->49->97->130->10->1.
# Here's why 22 is NOT a happy number:
# 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...


describe "the read_integers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/39_happy_numbers_sample.txt'
    integers = [1, 7, 22]

    expect(read_integers(filename)).to eq(integers)
  end
end

describe "the sum_digit_squares method" do

  it "works when the number is 1" do
    expect(sum_digit_squares(1)).to eq(1)
  end

  it "works when the number is 10" do
    expect(sum_digit_squares(10)).to eq(1)
  end

  it "works when the number is 100" do
    expect(sum_digit_squares(100)).to eq(1)
  end

  it "works when the number is 2" do
    expect(sum_digit_squares(2)).to eq(4)
  end

  it "works when the number is 24" do
    expect(sum_digit_squares(24)).to eq(20)
  end

  it "works when the number is 99" do
    expect(sum_digit_squares(99)).to eq(162)
  end

  it "works with the sample numbers" do

    expect(sum_digit_squares(7)).to eq(49)
    expect(sum_digit_squares(22)).to eq(8)
  end
end

describe "the is_happy? method" do
  it "knows 1 is happy" do
    expect(is_happy?(1)).to eq(true)
  end

  it "knows 2 is unhappy" do
    expect(is_happy?(2)).to eq(false)
  end

  it "knows 7 is happy" do
    expect(is_happy?(7)).to eq(true)
  end

  it "knows 22 is unhappy" do
    expect(is_happy?(22)).to eq(false)
  end
end

describe "the multiples_of_a_number method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/39_happy_numbers_sample.txt'
    $stdout = StringIO.new
    expected_output = "1\n1\n0\n"
    happy_numbers(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
