require "30_set_intersection"

# # SET INTERSECTION
# ## CHALLENGE DESCRIPTION:
#
#
# You are given two sorted list of numbers (ascending order).
# The lists themselves are comma delimited and the two lists
# are semicolon delimited. Print out the intersection of
# these two sets.
#
# ### INPUT SAMPLE:
#
# File containing two lists of ascending order sorted integers, comma
# delimited, one per line. E.g.
#
# 1,2,3,4;4,5,6
# 20,21,22;45,46,47
# 7,8,9;8,9,10,11,12
#
# ### OUTPUT SAMPLE:
#
# Print out the ascending order sorted intersection of the two lists,
# one per line. Print empty new line in case the lists have no
# intersection. E.g.
#
# 4
#
# 8,9


describe "the read_lists method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/30_set_intersection_sample.txt'
    lists = [[[1, 2, 3, 4],          [4, 5, 6]],
             [[20, 21, 22],       [45, 46, 47]],
             [   [7, 8, 9], [8, 9, 10, 11, 12]]]

    expect(read_lists(filename)).to eq(lists)
  end
end

describe "the intersection method" do

  it "works on sets of size 1" do
    expect(intersection([1],      [1])).to eq([1])
    expect(intersection([1],      [0])).to eq([ ])
    expect(intersection([2], [2], [2])).to eq([2])
    expect(intersection([2], [2], [3])).to eq([ ])
  end

  it "works on the sample sets" do
    sample_sets = [[[1, 2, 3, 4],          [4, 5, 6]],
                   [[20, 21, 22],       [45, 46, 47]],
                   [   [7, 8, 9], [8, 9, 10, 11, 12]]]

    expect(intersection(*sample_sets[0])).to eq([   4])
    expect(intersection(*sample_sets[1])).to eq([    ])
    expect(intersection(*sample_sets[2])).to eq([8, 9])
  end
end

describe "the set_intersection method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/30_set_intersection_sample.txt'
    $stdout = StringIO.new
    expected_output = "4\n\n8,9\n"
    set_intersection(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
