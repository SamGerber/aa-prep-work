require "67_hex_to_decimal"

# # HEX TO DECIMAL
# ## CHALLENGE DESCRIPTION:
#
#
# You will be given a hexadecimal (base 16) number.
# Convert it into decimal (base 10).
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument a path
# to a filename. Each line in this file contains a hex
# number. You may assume that the hex number does not have
# the leading 'Ox'. Also all alpha characters (a through f)
# in the input will be in lowercase. E.g.
#
#     9f
#     11
#
# ### OUTPUT SAMPLE:
#
# Print out the equivalent decimal number. E.g.
#
#     159
#     17



describe "the read_pairs method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/67_hex_to_decimal_sample.txt'
    hex_numbers = %w( 9f 11 )

    expect(read_hex_numbers(filename)).to eq(hex_numbers)
  end
end

describe "the hex_to_decimal method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/67_hex_to_decimal_sample.txt'
    $stdout = StringIO.new
    expected_output = "159\n17\n"
    hex_to_decimal(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
