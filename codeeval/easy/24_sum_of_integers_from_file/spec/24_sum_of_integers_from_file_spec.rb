require "24_sum_of_integers_from_file"
#
# # SUM OF INTEGERS FROM FILE
# ## CHALLENGE DESCRIPTION:
#
#
# Print out the sum of integers read from a file.
#
# ### INPUT SAMPLE:
#
# The first argument to the program will be a path to a filename containing a positive integer, one per line. E.g.
#
#     5
#     12
#
# ### OUTPUT SAMPLE:
#
# Print out the sum of all the integers read from the file. E.g.
#
#     17


describe "the read_integers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/24_sum_of_integers_from_file_sample.txt'
    integers = [5, 12]

    expect(read_integers(filename)).to eq(integers)
  end
end

describe "the sum_integers method" do

  it "works on the sample data" do
    expect(sum_integers([5, 12])).to eq(17)
  end

end

describe "the sum_integers_in_file method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/24_sum_of_integers_from_file_sample.txt'
    $stdout = StringIO.new
    expected_output = "17\n"
    sum_integers_in_file(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
