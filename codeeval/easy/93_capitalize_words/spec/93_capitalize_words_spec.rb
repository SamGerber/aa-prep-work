require "93_capitalize_words"

# # CAPITALIZE WORDS
# ## CHALLENGE DESCRIPTION:
#
# Write a program which capitalizes the first letter of each
# word in a sentence.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a
# filename. Input example is the following
#
#     Hello world
#     javaScript language
#     a letter
#     1st thing
#
# ### OUTPUT SAMPLE:
#
# Print capitalized words in the following way.
#
#     Hello World
#     JavaScript Language
#     A Letter
#     1st Thing

describe "the read_phrases method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/93_capitalize_words_sample.txt'
    phrases = [%w(Hello world),
               %w(javaScript language),
               %w(a letter),
               %w(1st thing)]

    expect(read_phrases(filename)).to eq(phrases)
  end
end

describe "the capitalize_word method" do
  it "doesn't modify the input" do
    test = "test"
    capitalize_word(test)
    expect(test).to eq("test")
  end

  it "capitalizes javaScript" do
    expect(capitalize_word("javaScript")).to eq("JavaScript")
  end

  it "capitalizes 1st" do
    expect(capitalize_word("1st")).to eq("1st")
  end

  it "capitalizes Hello" do
    expect(capitalize_word("Hello")).to eq("Hello")
  end
end

describe "the capitalize_words method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/93_capitalize_words_sample.txt'
    $stdout = StringIO.new
    expected_output = "Hello World\n" <<
                      "JavaScript Language\n" <<
                      "A Letter\n" <<
                      "1st Thing\n"

    capitalize_words(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
