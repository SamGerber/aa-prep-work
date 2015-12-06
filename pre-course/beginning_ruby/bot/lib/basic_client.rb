require_relative 'bot'

bot = Bot.new(:name => 'Fred', :data_file => 'fred.bot')
puts bot.greeting

while input = $stdin.gets and input.chomp != 'end'
  puts '>> ' + bot.response_to(input)
end

puts bot.farewell
