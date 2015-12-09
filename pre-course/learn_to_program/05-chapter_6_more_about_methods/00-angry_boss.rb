# Learn to Program - Second Edition
# Exercise from Chapter 6 - More About Methods
# Sam Gerber

# Write an angry boss program that rudely asks what you want.
# Whatever you answer, the angry boss should yell it back to you and then
# fire you. For example, if you type in 'I want a raise', it should yell back
# like this:
# =>WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

class Boss
  attr_reader :mood

  def initialize(name = 'Pointy-Haired Boss')
    @name = name
    @mood = :angry
  end

  def manage_employee
    puts "What do you want?"
    employee_request = gets.chomp
    if @mood == :angry
      puts "WHADDAYA MEAN \"#{employee_request.upcase}\"?!? YOU'RE FIRED!!"
    end
  end
end

Boss.new.manage_employee

# =>What do you want?
# <=I would like a raise, sir
# =>WHADDAYA MEAN "I WOULD LIKE A RAISE, SIR?!? YOU'RE FIRED!!