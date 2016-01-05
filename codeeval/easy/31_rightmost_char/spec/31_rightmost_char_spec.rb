require "31_rightmost_char"

# # RIGHTMOST CHAR
# ## CHALLENGE DESCRIPTION:
#
# You are given a string 'S' and a character 't'. Print out the
# position of the rightmost occurrence of 't' (case matters) in
# 'S' or -1 if there is none. The position to be printed out is
# zero based.
#
# ### INPUT SAMPLE:
#
# The first argument will ba a path to a filename, containing a
# string and a character, comma delimited, one per line. Ignore
# all empty lines in the input file. E.g.
#
# Hello World,r
# Hello CodeEval,E
#
# ### OUTPUT SAMPLE:
#
# Print out the zero based position of the character 't' in string
# 'S', one per line. Do NOT print out empty lines between your output.
# E.g.
#
# 8
# 10


describe "the read_lines method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/31_rightmost_char_sample.txt'
    lines = [['Hello World',    'r'],
             ['Hello CodeEval', 'E']]

    expect(read_lines(filename)).to eq(lines)
  end
end

describe "the rindex method" do

  it "returns nil when the character isn't in the string" do
    expect(rindex('banana', 'c')).to eq(nil)
  end

  it "works on strings of length 1" do
    expect(rindex('c', 'c')).to eq(-1)
  end

  it "works on longer strings" do
    expect(rindex('cdc', 'c')).to eq(-1)
    expect(rindex('cde', 'c')).to eq(-3)
  end

  it "works with the sample numbers" do
    lines = [['Hello World',    'r'],
             ['Hello CodeEval', 'E']]

    expect(rindex(*(lines.first))).to eq(-3)
    expect(rindex(*(lines.last ))).to eq(-4)
  end
end

describe "the rightmost_chars method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/31_rightmost_char_sample.txt'
    $stdout = StringIO.new
    expected_output = "8\n10\n"
    rightmost_chars(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
