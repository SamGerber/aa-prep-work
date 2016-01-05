require "06_longest_common_subsequence.rb"

# #LONGEST COMMON SUBSEQUENCE
# ##CHALLENGE DESCRIPTION:
#
# You are given two sequences. Write a program to determine the
# longest common subsequence between the two strings (each string
# can have a maximum length of 50 characters). NOTE: This subsequence
# need not be contiguous. The input file may contain empty lines,
# these need to be ignored.
#
# ##INPUT SAMPLE:
#
# The first argument will be a path to a filename that contains two
# strings per line, semicolon delimited. You can assume that there
# is only one unique subsequence per test case. E.g.
#
# XMJYAUZ;MZJAWXU
#
# ##OUTPUT SAMPLE:
#
# The longest common subsequence. Ensure that there are no trailing
# empty spaces on each line you print. E.g.
#
# MJAU

describe "The read_string_pairs method" do
  filename = 'assets/06_longest_common_subsequence_sample.txt'
  sequences = [['XMJYAUZ','MZJAWXU'],
               ['ABCDEFGHA','JDAJKDWIJR']]

  it "correctly reads sequences given a filename" do
    expect(read_string_pairs(filename)).to eq(sequences)
  end

end

describe "The first_match method" do
  raw_sequences = ['XMJYAUZ',
                   'MZJAWXU']

  it "correctly returns the first match" do
    expect(first_match(*raw_sequences)).to eq('M')
  end
end

describe "The longest_common_subsequence method" do
  raw_sequences = ['XMJYAUZ',
                   'MZJAWXU']

  it "correctly returns the longest common subsequence" do
    expect(longest_common_subsequence(*raw_sequences)).to eq('MJAU')
  end
end

describe "The longest_common_subsequence method" do
  raw_sequences = ['XMJYAUZX',
                   'MZJAWXUX']

  it "correctly returns the longest common subsequence" do
    expect(longest_common_subsequence(*raw_sequences)).to eq('MJAUX')
  end
end

describe "The longest_common_subsequence method" do
  raw_sequences = ['XXXX',
                   'XXXXXX']

  it "correctly returns the longest common subsequence" do
    expect(longest_common_subsequence(*raw_sequences)).to eq('XXXX')
  end
end

describe "The longest_common_subsequence method" do
  raw_sequences = ['ABCD',
                   'EFGH']

  it "correctly returns the longest common subsequence" do
    expect(longest_common_subsequence(*raw_sequences)).to eq('')
  end
end
