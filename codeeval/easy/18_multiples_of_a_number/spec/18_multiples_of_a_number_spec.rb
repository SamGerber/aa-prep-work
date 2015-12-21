require "18_multiples_of_a_number"

# Given numbers x and n, where n is a power of 2, print out the smallest
# multiple of n which is greater than or equal to x.
# Do not use division or modulo operator.
#
# INPUT SAMPLE:
#
# The first argument will be a path to a filename containing a
# comma separated list of two integers, one list per line. E.g.
#
# 13,8
# 17,16
# OUTPUT SAMPLE:
#
# Print to stdout, the smallest multiple of n which is greater
# than or equal to x, one per line. E.g.
#
# 16
# 32

describe "the read_lists method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/18_multiples_of_a_number_sample.txt'
    lists = [[13, 8],
             [17,16]]

    expect(read_lists(filename)).to eq(lists)
  end
end

describe "the smallest_multiple method" do

  it "works when the numbers are equal" do
    expect(smallest_multiple(32, 32)).to eq(32)
  end

  it "works when the x is smaller than n" do
    expect(smallest_multiple(32, 64)).to eq(64)
  end

  it "works when the x is more than twice n" do
    expect(smallest_multiple(32,  2)).to eq( 32)
  end

  it "works when the x is between twice and thrice n" do
    expect(smallest_multiple(6, 2)).to eq( 6)
  end

  it "works when x is negative" do
    expect(smallest_multiple(-32,  2)).to eq(2)
  end

  it "works when n is negative" do
    expect(smallest_multiple(32,  -2)).to eq(32)
  end

  it "works with the sample numbers" do

    expect(smallest_multiple(13,  8)).to eq(16)
    expect(smallest_multiple(17, 16)).to eq(32)
  end
end

describe "the multiples_of_a_number method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/18_multiples_of_a_number_sample.txt'
    $stdout = StringIO.new
    expected_output = "16\n32\n"
    multiples_of_a_number(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
