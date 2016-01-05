require "100_even_numbers"

# # EVEN NUMBERS
# ## CHALLENGE DESCRIPTION:
#
# Write a program which checks input numbers and determines whether
# a number is even or not.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a filename.
# Input example is the following
#
#     701
#     4123
#     2936
#
# ### OUTPUT SAMPLE:
#
# Print 1 if the number is even or 0 if the number is odd.
#
#     0
#     0
#     1
# All numbers in input are integers > 0 and < 5000.

describe "the read_numbers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/100_even_numbers_sample.txt'
    numbers  = [701, 4123, 2936]

    expect(read_numbers(filename)).to eq(numbers)
  end
end


describe "the even_numbers method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/100_even_numbers_sample.txt'
    $stdout = StringIO.new
    expected_output = "0\n" <<
                      "0\n" <<
                      "1\n"

    even_numbers(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
