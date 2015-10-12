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

lines = File.readlines("lib/text.txt")
line_count = lines.size
text = lines.join

total_characters = text.length

total_characters_nospaces = text.gsub(/\s+/, '').length

word_count = text.split.length

sentence_count = text.split(/\.|\?|!/).length

paragraph_count = text.split(/\n\n/).length

average_words_per_sentence = word_count / sentence_count

average_sentences_per_paragraph = sentence_count / paragraph_count

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{average_words_per_sentence} words per sentence (on average)"
puts "#{average_sentences_per_paragraph} sentences per paragraph (on average)"
