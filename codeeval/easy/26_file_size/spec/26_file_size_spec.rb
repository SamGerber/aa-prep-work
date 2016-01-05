require "26_file_size"


# # FILE SIZE
# ## CHALLENGE DESCRIPTION:
#
#
# Print the size of a file in bytes.
#
# ### INPUT:
#
# The first argument to your program has the path to the file you
# need to check the size of.
#
# ### OUTPUT SAMPLE:
#
# Print the size of the file in bytes. E.g.
#
#     55

describe "the file_size method" do
  it "returns the correct file size for a small .txt file" do
    filename = 'assets/26_file_size_sample.txt'
    size = 46

    expect(file_size(filename)).to eq(46)
  end
end
