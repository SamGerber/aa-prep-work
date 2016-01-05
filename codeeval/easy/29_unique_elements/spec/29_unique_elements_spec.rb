require "29_unique_elements"


# # UNIQUE ELEMENTS
# ## CHALLENGE DESCRIPTION:
#
# You are given a sorted list of numbers with duplicates.
# Print out the sorted list with duplicates removed.
#
# ### INPUT SAMPLE:
#
# File containing a list of sorted integers,
# comma delimited, one per line. E.g.
#
# 1,1,1,2,2,3,3,4,4
# 2,3,4,5,5
#
# ### OUTPUT SAMPLE:
#
# Print out the sorted list with duplicates removed, one per line.
# E.g.
# 
# 1,2,3,4
# 2,3,4,5


describe "the read_lists method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/29_unique_elements_sample.txt'
    lists = [[1,1,1,2,2,3,3,4,4],
                     [2,3,4,5,5]]

    expect(read_lists(filename)).to eq(lists)
  end
end

describe "the remove_duplicates method" do
  lists = [[1,1,1,2,2,3,3,4,4],
  [2,3,4,5,5]]

  it "works on the sample data" do
    expect(remove_duplicates(lists.first)).to eq([1, 2, 3, 4])
    expect(remove_duplicates( lists.last)).to eq([2, 3, 4, 5])
  end
end

describe "the multiples_of_a_number method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/29_unique_elements_sample.txt'
    $stdout = StringIO.new
    expected_output = "1,2,3,4\n2,3,4,5\n"
    unique_elements(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
