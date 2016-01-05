require "99_calculate_distance"

# # CALCULATE DISTANCE
# ## CHALLENGE DESCRIPTION:
#
# You have coordinates of 2 points and need to find the
# distance between them.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a
# path to a filename. Input example is the following
#
#
#     (25, 4) (1, -6)
#     (47, 43) (-25, -11)
#
#
# All numbers in input are integers between -100 and 100.
#
# ### OUTPUT SAMPLE:
#
# Print results in the following way.
#
#     26
#     90
#
# You don't need to round the results you receive.
# They must be integer numbers.

describe "the read_lines method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/99_calculate_distance_sample.txt'

    expect(read_lines(filename).count).to eq(2)
    expect(read_lines(filename).first.is_a?(Line)).to eq(true)
  end
end


describe "the calculate_distances method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/99_calculate_distance_sample.txt'
    $stdout = StringIO.new
    expected_output = "26\n" <<
                      "90\n"

    calculate_distances(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
