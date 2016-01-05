require "92_penultimate_word"

# # PENULTIMATE WORD
# ## CHALLENGE DESCRIPTION:
#
# Write a program which finds the next-to-last word in a string.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a
# filename. Input example is the following
#
#     some line with text
#     another line
#
# Each line has more than one word.
#
# ### OUTPUT SAMPLE:
#
# Print the next-to-last word in the following way.
#
#     with
#     another

describe "the read_phrases method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/92_penultimate_word_sample.txt'
    phrases = [%w(some line with text),
               %w(another line)]

    expect(read_phrases(filename)).to eq(phrases)
  end
end

describe "the penultimate_word method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/92_penultimate_word_sample.txt'
    $stdout = StringIO.new
    expected_output = "with\nanother\n"

    penultimate_word(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
