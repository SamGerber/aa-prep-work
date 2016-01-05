require "82_armstrong_numbers"

# # ARMSTRONG NUMBERS
# ## CHALLENGE DESCRIPTION:
#
#
# An Armstrong number is an n-digit number that is equal to the sum
# of the n'th powers of its digits. Determine if the input numbers
# are Armstrong numbers.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path to a
# filename. Each line in this file has a positive integer. E.g.
#
#     6
#     153
#     351
#
# ### OUTPUT SAMPLE:
#
# Print out True/False if the number is an Armstrong number or not. E.g.
#
#     True
#     True
#     False

describe "the read_integers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/82_armstrong_numbers_sample.txt'
    integers = [6, 153, 351]

    expect(read_integers(filename)).to eq(integers)
  end
end

describe "the is_armstrong? method" do
  it "knows that all single-digit numbers are armstrong" do
    (0..9).each do |number|
      expect(is_armstrong?(number)).to eq(true)
    end
  end

  it "knows no two digit numbers are armstrong" do
    armstrongs = (10..99).select do |number|
      is_armstrong?(number)
    end

    expect(armstrongs).to eq([])
  end

  it "knows which 3 digit numbers are armstrong" do
    armstrongs = (100..999).select do |number|
      is_armstrong?(number)
    end

    expect(armstrongs).to eq([153, 370, 371, 407])
  end
end

describe "the armstrong_numbers method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/82_armstrong_numbers_sample.txt'
    $stdout = StringIO.new
    expected_output = "True\nTrue\nFalse\n"
    armstrong_numbers(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
