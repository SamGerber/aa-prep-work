# Learn to Program - Second Edition
# Exercise from Chapter 6 - More About Methods
# Sam Gerber

# Here's something for you to do in order to play around
# more with center, ljust, and rjust: write a program that will display a
# table of contents so that it looks like this:


Chapter = Struct.new(:number, :title, :page_number)
chapters = [Chapter.new(1, "Getting Started", 1),
            Chapter.new(2, "Numbers", 9),
            Chapter.new(3, "Letters", 13)
  ]

line_width = 60

puts("Table of Contents".center(line_width))
chapters.each do |chapter|
  puts ("Chapter #{chapter.number.to_s.rjust(2)}:  #{chapter.title}").ljust(line_width - 7) + ("page#{chapter.page_number.to_s.rjust(3)}")
end

# =>                     Table of Contents
# =>Chapter  1:  Getting Started                         page  1
# =>Chapter  2:  Numbers                                 page  9
# =>Chapter  3:  Letters                                 page 13