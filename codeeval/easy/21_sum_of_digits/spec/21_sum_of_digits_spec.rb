require "21_sum_of_digits"

# # SUM OF DIGITS
# ## CHALLENGE DESCRIPTION:
#
#
# Given a positive integer, find the sum of its constituent digits.
#
# ### INPUT SAMPLE:
#
# The first argument will be a path to a filename containing
# positive integers, one per line. E.g.
#
#     23
#     496
#
# ### OUTPUT SAMPLE:
#
# Print to stdout, the sum of the numbers that make up the integer,
# one per line. E.g.
#
# 5
# 19


describe "the read_integers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/21_sum_of_digits_sample.txt'
    integers = [23, 496]

    expect(read_integers(filename)).to eq(integers)
  end
end

describe "the digits_sum method" do

  it "works on 1 digit numbers" do
    (0..9).each do | number|
      expect(digits_sum(number)).to eq(number)
    end
  end

  it "works on multi-digit numbers" do
    expect(digits_sum(111)).to eq(3)
    expect(digits_sum(100)).to eq(1)
    expect(digits_sum(532)).to eq(10)
  end

end

describe "the sum_of_digits method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/21_sum_of_digits_sample.txt'
    $stdout = StringIO.new
    expected_output = "5\n19\n"
    sum_of_digits(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
