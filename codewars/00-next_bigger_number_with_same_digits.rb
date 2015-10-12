def next_bigger(n)
  return unless n.integer? && n > 0

  digits = n.to_s.split("").map{|digit| digit.to_i}
  least_significant_digits = []
  loop do
    least_significant_digits << digits.pop
    break if digits.empty?
    if digits.last < least_significant_digits.max
      temp = least_significant_digits.select{|digit| digit > digits.last}.sort.first
      least_significant_digits.delete_at(least_significant_digits.index(temp))
      least_significant_digits << digits.pop
      digits << temp
      return (digits + least_significant_digits.sort).join.to_i
    end
  end
  return -1
end

puts next_bigger(12)
puts next_bigger(513)
puts next_bigger(2017)
puts next_bigger(414)
puts next_bigger(144)
puts next_bigger(9)
puts next_bigger(111)
puts next_bigger(531)
