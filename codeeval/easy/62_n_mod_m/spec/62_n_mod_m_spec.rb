require "62_n_mod_m"

# # N MOD M
# ## CHALLENGE DESCRIPTION:
#
#
# Given two integers N and M, calculate N Mod M
# (without using any inbuilt modulus operator).
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument
# a path to a filename. Each line in this file contains
# two comma separated positive integers. E.g.
#
# 20,6
# 2,3
# You may assume M will never be zero.
#
# ### OUTPUT SAMPLE:
#
# Print out the value of N Mod M


describe "the read_pairs method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/62_n_mod_m_sample.txt'
    pairs = [[20, 6],
             [ 2, 3]]

    expect(read_pairs(filename)).to eq(pairs)
  end
end

describe "the modulus method" do

  it "knows how to do modulus for a prime n and varying ms" do
    n  = 97
    ms = (1..97).to_a

    ms.each do |m|
      expect(modulus(n, m)).to eq(n%m)
    end
  end


end


describe "the n_mod_m method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/62_n_mod_m_sample.txt'
    $stdout = StringIO.new
    expected_output = "2\n2\n"
    n_mod_m(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
