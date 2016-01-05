require "20_lower_case"

# # LOWERCASE
# ## CHALLENGE DESCRIPTION:
#
# Given a string write a program to convert it into lowercase.
#
# ### INPUT SAMPLE:
#
# The first argument will be a path to a filename containing
# sentences, one per line. You can assume all characters are
# from the english language. E.g.
#
#     HELLO CODEEVAL
#     This is some text
#
# ### OUTPUT SAMPLE:
#
# Print to stdout, the lowercase version of the sentence,
# each on a new line. E.g.
#
#     hello codeeval
#     this is some text


describe "the read_sentences method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/20_lower_case_sample.txt'
    sentences = [   'HELLO CODEEVAL',
                 'This is some text']

    expect(read_sentences(filename)).to eq(sentences)
  end
end

describe "the downcase method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/20_lower_case_sample.txt'
    $stdout = StringIO.new
    expected_output = "hello codeeval\nthis is some text\n"
    lower_case(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
