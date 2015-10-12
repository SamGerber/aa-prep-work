# Your task in this Kata is to emulate text justification in monospace font.
# You will be given a single-lined text and the expected justification width.
# The longest word will never be greater than this width.
#
# Here are the rules:
#
# *Use spaces to fill in the gaps between words.
# *Each line should contain as many words as possible.
# *Use '\n' to separate lines.
# *Gap between words can't differ by more than one space.
# *Lines should end with a word not a space.
# *'\n' is not included in the length of a line.
# *Large gaps go first, then smaller ones: 'Lorem---ipsum---dolor--sit--amet'
#    (3, 3, 2, 2 spaces).
# *Last line should not be justified, use only one space between words.
# *Last line should not contain '\n'
# *Strings with one word do not need gaps ('somelongword\n').



def justify(text, width)
    # Split the string into words
    words = text.split
    result = ""

    # shift words from the words array into the line array until required
      # characters exceeds width.
    loop do
      line = []
      characters_in_line = 0
      while characters_in_line + words.first.length  <= width
        line << words.shift
        characters_in_line += line.last.length + 1
        if words.empty?
          characters_in_line = width + 1
          break
        end
      end

      # add spaces & newline
      characters_in_line -= 1
      extra_spaces = width - characters_in_line
      until line.count == 1
        spaces = 1 + extra_spaces.fdiv(line.count - 1).ceil
        result += line.shift + " " * spaces
        extra_spaces -= (spaces - 1)
      end
      result += line.shift

      return result if words.empty?
      result += "\n"
    end
end

test_text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consequat ligula et lorem facilisis posuere. Proin nec lacus ac turpis vestibulum pretium vitae ac felis. Nulla rhoncus, ante et dapibus maximus, eros nunc sodales sem, ut semper massa erat non ipsum. Suspendisse pretium, massa ut hendrerit semper, felis ex elementum leo, ut faucibus quam eros eu libero. Suspendisse gravida ut turpis non dignissim. Suspendisse sit amet mauris neque. Cras eget urna velit. Sed ultricies, lacus ut rutrum ultrices, erat ligula venenatis ex, et ornare risus ipsum id urna. Integer accumsan hendrerit aliquam. Quisque semper dictum nulla, ac ornare nisl pulvinar lacinia. Quisque rutrum turpis et augue ullamcorper, a placerat ex consequat. Pellentesque euismod est eu ex pharetra pulvinar. Donec tincidunt mattis pharetra. Donec urna ligula, mattis a convallis eget, mollis at urna. Ut tincidunt sagittis semper."
short_text = "123 45 6"

puts justify(test_text, 30)
puts justify(short_text, 7)
