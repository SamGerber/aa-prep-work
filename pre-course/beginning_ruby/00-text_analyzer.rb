# Beginning Ruby - Second Edition
# Exercise from Chapter 4 - Developing your first Ruby Application
# Sam Gerber

# Required basic features:
# * character count
# * character count (excluding spaces)
# * line count
# * word count
# * sentence count
# * paragraph count
# * average number of words per sentence
# * average number of sentences in a paragraph

stopwords = %w{the a by on for of are with just but and to the my I has some in}

# Check file path / usage
if !ARGV.empty? && File.exist?(ARGV[0])
  path = ARGV[0]
else
  puts "Usage: 00-text_analyzer.rb path"
end
  
# Read file, count lines
lines = File.readlines(path)
line_count = lines.size
text = lines.join

# Count characters
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length

# Count words
word_count = text.split.length
interesting_word_count = text.split.select{|word| !stopwords.include? word}.length

# Count sentences and paragraphs
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

# Calculate averages and percentage
average_words_per_sentence = word_count / sentence_count
average_sentences_per_paragraph = sentence_count / paragraph_count
percentage_interesting_words = (100 * interesting_word_count.to_f / word_count).round

# Summarize text
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/}

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words, #{percentage_interesting_words}% of which are interesting"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{average_words_per_sentence} words per sentence (on average)"
puts "#{average_sentences_per_paragraph} sentences per paragraph (on average)"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"
