# Names scores
# Problem 22
# Using names.txt (right click and 'Save Link/Target As...'),
# a  46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. Then working out
# the alphabetical value for each name, multiply this value by
# its alphabetical position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN,
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
# So, COLIN would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?
# Solution by Sam Gerber

# This method sums amicable numbers under max
def names_scores
  infile  = File.open("./lib/21-names.txt", "r")

  names = infile.read.downcase.gsub("\"","").split(",").sort

  result = 0
  names.each_with_index do |name, index|
    letters_sum = 0
    name.each_codepoint do |letter|
      letters_sum += letter - 96
    end
    result += (index + 1) * letters_sum
  end

  infile.close
  result
end

puts names_scores
