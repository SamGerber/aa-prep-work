# Learn to Program - Second Edition
# Exercise from Chapter 13 - Creating New Classes, Changing Existing Ones
# Sam Gerber

# Make and OrangeTree class that has a height method that retursn
# its height and a one_year_passes method that, when called, ages the tree one
# year. Each year the tree grows taller (however much you think an orange
# tree should grow in a year), and after some number of years (again, your
# call) the tree shoud die. For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce
# more each year than younger trees....whatever you think makes the most
# sense. And, of course, you should be able to count_the_oranges (which returns
# the number of oranges on the tree) and pick_an_orange (which reduces the
# @orange_count by 1 and returns a string telling you how delicious the orange
# was, or else it just tells you that there are no more oranges to pick this
# year). Make sure any oranges you don't pick one year fall off before the
# next year.

class OrangeTree
  def initialize
    @age          = 0
    @orange_count = 0
    @height       = 0
  end

  def one_year_passes
    @age += 1
    die if @age > 10
    @height = 10 * @age
    puts "#{@orange_count} oranges fall off the tree." unless @orange_count == 0
    puts "winter"
    puts "spring"
    @orange_count = @age * 5
    display
  end

  def display
    puts "The orange tree is now #{@height} tall with #{@orange_count} oranges."
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    case @orange_count
    when 0
      puts "There are no more oranges on the tree this year."
    else
      @orange_count -= 1
      puts "You eat a delicious orange."
    end
  end

  def die
    puts "The tree whithers and dies."
    exit
  end
end

tree = OrangeTree.new
