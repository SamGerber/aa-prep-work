# Write a program which reverses the words in an input sentence.
#

File.open(ARGV[0]).each_line do |line|
  puts line.split.reverse.join(" ")
end
