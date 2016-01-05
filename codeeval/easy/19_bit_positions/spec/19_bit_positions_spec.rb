require "19_bit_positions"

# # BIT POSITIONS
# ## CHALLENGE DESCRIPTION:
#
# Given a number n and two integers p1 and p2,
# determine if the bits in position p1 and p2 are the same or not.
# Positions p1 and p2 are 1 based.
#
# ### INPUT SAMPLE:
#
# The first argument will be a path to a filename containing a comma
# separated list of 3 integers, one list per line. E.g.
#
#     86,2,3
#     125,1,2
#
# ### OUTPUT SAMPLE:
#
# Print to stdout, 'true'(lowercase) if the bits are the same,
# else 'false'(lowercase). E.g.
#
#     true
#     false


describe "the read_triples method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/19_bit_positions_sample.txt'
    triples = [[ 86, 2, 3],
               [125, 1, 2]]

    expect(read_triples(filename)).to eq(triples)
  end
end

describe "the bits method" do

  it "converts numbers to arrays of bits from MSB to LSB" do
    expect(bits(32)).to eq([1, 0, 0, 0, 0, 0])
    expect(bits(33)).to eq([1, 0, 0, 0, 0, 1])
    expect(bits(34)).to eq([1, 0, 0, 0, 1, 0])
    expect(bits(63)).to eq([1, 1, 1, 1, 1, 1])
  end

  it "converts zero to binary" do
    expect(bits(0)).to eq([0])
  end

  it "converts one to binary" do
    expect(bits(1)).to eq([1])
  end

  it "converts two to binary" do
    expect(bits(2)).to eq([1, 0])
  end

  it "converts three to binary" do
    expect(bits(3)).to eq([1, 1])
  end

  it "works with the sample numbers" do

    expect(bits( 86)).to eq([1, 0, 1, 0, 1, 1, 0])
    expect(bits(125)).to eq([1, 1, 1, 1, 1, 0, 1])
  end
end

describe "the bits_match? method" do
  it "rejects out of range indices" do
    expect(bits_match?([1, 1], 0, 1)).to eq(false)
    expect(bits_match?([1, 1], 1, 3)).to eq(false)
  end

  it "works in the simplest cases" do
    expect(bits_match?(   [1],    1)).to eq( true)
    expect(bits_match?(   [1], 1, 1)).to eq( true)
    expect(bits_match?([1, 1], 1, 2)).to eq( true)
    expect(bits_match?([1, 0], 1, 2)).to eq(false)
  end

  it "works with the three indices" do
    expect(bits_match?(      [1], 1, 1, 1)).to eq( true)
    expect(bits_match?(   [1, 1], 1, 2, 2)).to eq( true)
    expect(bits_match?(   [1, 0], 1, 1, 2)).to eq(false)
    expect(bits_match?([1, 0, 1], 1, 2, 3)).to eq(false)
  end
end

describe "the process_triples method" do
  it "handles the sample data" do
    sample_triples = [[ 86, 2, 3],
                      [125, 1, 2]]
    expect(process_triples(sample_triples)).to eq([true, false])
  end
end

describe "the bit_positions method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/19_bit_positions_sample.txt'
    $stdout = StringIO.new
    expected_output = "true\nfalse\n"
    bit_positions(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
