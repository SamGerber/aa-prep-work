require "40_self_describing_numbers"

# # SELF DESCRIBING NUMBERS
# ## CHALLENGE DESCRIPTION:
#
#
# A number is a self-describing number when (assuming digit
# positions are labeled 0 to N-1), the digit in each position
# is equal to the number of times that that digit appears in
# the number.
#
# ### INPUT SAMPLE:
#
# The first argument is the pathname to a file which contains
# test data, one test case per line. Each line contains a
# positive integer. E.g.
#
#     2020
#     22
#     1210
# ### OUTPUT SAMPLE:
#
# If the number is a self-describing number, print out 1.
# If not, print out 0. E.g.
#
#     1
#     0
#     1
# For the curious, here's how 2020 is a self-describing number:
# Position '0' has value 2 and there is two 0 in the number.
# Position '1' has value 0 because there are not 1's in the number.
# Position '2' has value 2 and there is two 2.
# And the position '3' has value 0 and there are zero 3's.


describe "the read_integers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/40_self_describing_numbers_sample.txt'
    integers = [2020, 22, 1210]

    expect(read_integers(filename)).to eq(integers)
  end
end

describe "the digits method" do

  it "splits up a number into digits" do
    expect(digits(1234)).to eq([1, 2, 3, 4])
  end
end

describe "the describes_self? method" do

  it "knows 0 is not self-describing" do
    expect(describes_self?(0)).to eq(false)
  end

  it "knows 1 is not self-describing" do
    expect(describes_self?(1)).to eq(false)
  end

  it "knows 2020 is self-describing" do
    expect(describes_self?(2020)).to eq(true)
  end

  it "knows 1210 is self-describing" do
    expect(describes_self?(1210)).to eq(true)
  end

  it "knows 20 is not self-describing" do
    expect(describes_self?(20)).to eq(false)
  end
end


describe "the self_describing_numbers method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/40_self_describing_numbers_sample.txt'
    $stdout = StringIO.new
    expected_output = "1\n0\n1\n"
    self_describing_numbers(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
