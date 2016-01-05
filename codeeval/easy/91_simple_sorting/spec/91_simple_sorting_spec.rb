require "91_simple_sorting"

# # SIMPLE SORTING
# ## CHALLENGE DESCRIPTION:
#
# Write a program which sorts numbers.
#
# ### INPUT SAMPLE:
#
# Your program should accept as its first argument
# a path to a filename. Input example is the following
#
# 70.920 -38.797 14.354 99.323 90.374 7.581
# -37.507 -3.263 40.079 27.999 65.213 -55.552
#
# ### OUTPUT SAMPLE:
#
# Print sorted numbers in the following way. Please note,
# that you need to print the numbers till the 3rd digit after
# the dot including trailing zeros.
#
# -38.797 7.581 14.354 70.920 90.374 99.323
# -55.552 -37.507 -3.263 27.999 40.079 65.213

describe "the read_numbers method" do
  it "can read a file passed in as an argument" do
    filename = 'assets/91_simple_sorting_sample.txt'
    numbers = [[ 70.920, -38.797, 14.354, 99.323, 90.374,   7.581],
               [-37.507,  -3.263, 40.079, 27.999, 65.213, -55.552]]

    expect(read_numbers(filename)).to eq(numbers)
  end
end

describe "the simple_sort method" do
  it "reads a file and prints results to STDOUT" do
    filename = 'assets/91_simple_sorting_sample.txt'
    $stdout = StringIO.new
    expected_output = "-38.797 7.581 14.354 70.920 90.374 99.323\n" <<
                      "-55.552 -37.507 -3.263 27.999 40.079 65.213\n"

    simple_sort(filename)
    expect($stdout.string).to eq(expected_output)
    $stdout = STDOUT
  end
end
