require "97_find_a_writer"

# # FIND A WRITER
# ## CHALLENGE DESCRIPTION:
#
#
# You have a set of rows with names of famous writers encoded inside.
# Each row is divided into 2 parts by pipe char (|).
# The first part has a writer's name.
# The second part is a "key" to generate a name.
#
# Your goal is to go through each number in the key
# (numbers are separated by space) left-to-right.
# Each number represents a position in the 1st part of a row.
# This way you collect a writer's name which you have to output.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a filename.
# Input example is the following
#
#     osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53
#
#     3Kucdq9bfCEgZGF2nwx8UpzQJyHiOm0hoaYP6ST1WM7Nks5XjrR4IltBeDLV vA| 2 26 33 55 34 50 33 61 44 28 46 32 28 30 3 50 34 61 40 7 1 31
#
# This input had 2 rows.
#
# ### OUTPUT SAMPLE:
#
# Print results in the following way.
#
#     Stephen King 1947
#     Kyotaro Nishimura 1930

describe "the read_rows method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/97_find_a_writer_sample.txt'
    rows = [[['o','s','S','E','5','G','u','0','V','i','8','W','R','q','9','3','U','v','k','Y','Z','C','j','a','O','K','e','N','J','f','T','y','H','6','t','z','D','Q','b','x','F','m','4','M','1','n','d','X','I','P','h','2','7','w','B','A',' ','r','L','c','l','p','g'], [3, 35, 27, 62, 51, 27, 46, 57, 26, 10, 46, 63, 57, 45, 15, 43, 53]],
            [['3','K','u','c','d','q','9','b','f','C','E','g','Z','G','F','2','n','w','x','8','U','p','z','Q','J','y','H','i','O','m','0','h','o','a','Y','P','6','S','T','1','W','M','7','N','k','s','5','X','j','r','R','4','I','l','t','B','e','D','L','V',' ','v','A'], [2, 26, 33, 55, 34, 50, 33, 61, 44, 28, 46, 32, 28, 30, 3, 50, 34, 61, 40, 7, 1, 31]]]

    expect(read_rows(filename)).to eq(rows)
  end
end


describe "the decode_rows method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/97_find_a_writer_sample.txt'
    $stdout = StringIO.new
    expected_output = "Stephen King 1947\n" <<
                      "Kyotaro Nishimura 1930\n"

    decode_rows(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
