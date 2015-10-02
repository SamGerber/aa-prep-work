# Counting Sundays
# Problem 19
# You are given the following information, but you may prefer to
# do some research for yourself.
#
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on
#  a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth
#  century (1 Jan 1901 to 31 Dec 2000)?
# Solution by Sam Gerber

# This method counts the number of Sundays which fell on the first of the
# month in the twentieth century
def counting_sundays
  sundays = 0
  (1901..2000).each do |year|
    (1..12).each do |month|
      sundays += 1 if day_of_week(1, month, year) == 0
    end
  end
  sundays
end

# This method returns the day of the week of any date after
# 31 Dec 1899 0 = Sunday and 6 = Saturday
def day_of_week(day, month, year)
  (days_since_date(1, 1, 1900, day, month, year) + 1) % 7
end

# This method returns the number of days between two dates.
def days_since_date(start_day, start_month, start_year, end_day, end_month, end_year)
  days = 0

  if start_day == end_day && start_month == end_month && start_year == end_year
    return 0
  elsif start_month == end_month && start_year == end_year
    return end_day - start_day
  elsif start_year == end_year

    days += 30 - start_day if [9, 4, 6, 11].include?(start_month)
    days += 31 - start_day if [12, 10, 8, 7, 5, 3, 1].include?(start_month)
    days += (leap_year?(end_year) ? 29 : 28) - start_day if start_month == 2

    (start_month + 1...end_month).each do |month_count|
      days += 30 if [9, 4, 6, 11].include?(month_count)
      days += 31 if [12, 10, 8, 7, 5, 3, 1].include?(month_count)
      days += (leap_year?(end_year) ? 29 : 28) if month_count == 2
    end
    days += end_day
  else
    days += 30 - start_day if [9, 4, 6, 11].include?(start_month)
    days += 31 - start_day if [12, 10, 8, 7, 5, 3, 1].include?(start_month)
    days += (leap_year?(end_year) ? 29 : 28) - start_day if start_month == 2

    (start_month + 1..12).each do |month_count|
      days += 30 if [9, 4, 6, 11].include?(month_count)
      days += 31 if [12, 10, 8, 7, 5, 3, 1].include?(month_count)
      days += (leap_year?(end_year) ? 29 : 28) if month_count == 2
    end

    (start_year + 1...end_year).each do |count_year|
      days += leap_year?(count_year) ? 366 : 365
    end

    (1...end_month).each do |month_count|
      days += 30 if [9, 4, 6, 11].include?(month_count)
      days += 31 if [12, 10, 8, 7, 5, 3, 1].include?(month_count)
      days += (leap_year?(end_year) ? 29 : 28) if month_count == 2
    end
  days += end_day
  end
  days
end

# This method returns true if a year is a leap year
def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

puts counting_sundays
puts day_of_week(2, 10, 2015)
puts days_since_date(1, 1, 1901, 31, 12, 2000)
