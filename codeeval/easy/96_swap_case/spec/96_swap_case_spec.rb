require "96_swap_case"

# # SWAP CASE
# ## CHALLENGE DESCRIPTION:
#
#
# Write a program which swaps letters' case in a sentence.
# All non-letter characters should remain the same.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path
# to a filename. Input example is the following
#
#     Hello world!
#     JavaScript language 1.8
#     A letter
#
# ### OUTPUT SAMPLE:
#
# Print results in the following way.
#
#     hELLO WORLD!
#     jAVAsCRIPT LANGUAGE 1.8
#     a LETTER

describe "the read_phrases method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/96_swap_case_sample.txt'
    phrases = ['Hello world!',
               'JavaScript language 1.8',
               'A letter']

    expect(read_phrases(filename)).to eq(phrases)
  end
end


describe "the swap_case_words method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/96_swap_case_sample.txt'
    $stdout = StringIO.new
    expected_output = "hELLO WORLD!\n" <<
                      "jAVAsCRIPT LANGUAGE 1.8\n" <<
                      "a LETTER\n"

    swap_case_words(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
