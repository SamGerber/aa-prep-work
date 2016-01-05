require "22_fibonacci_series"

# # FIBONACCI SERIES
# ## CHALLENGE DESCRIPTION:
#
# The Fibonacci series is defined as:
# F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1.
# Given an integer n≥0, print out the F(n).
#
# ### INPUT SAMPLE:
#
# The first argument will be a path to a filename containing integer numbers, one per line. E.g.
#
#     5
#     12
#
# ### OUTPUT SAMPLE:
#
# Print to stdout, the fibonacci number, F(n). E.g.
#
#     5
#     144


describe "the read_indices method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/22_fibonacci_series_sample.txt'
    indices = [5, 12]

    expect(read_indices(filename)).to eq(indices)
  end
end

describe "the fibonacci_term method" do

  it "returns the first 10 terms of the fibonacci sequence" do
    sequence = (0..9).map { |index| fibonacci_term(index) }
    expect(sequence).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34])
  end
end

describe "the fibonacci_series method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/22_fibonacci_series_sample.txt'
    $stdout = StringIO.new
    expected_output = "5\n144\n"
    fibonacci_series(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
