def crazy_sum(numbers)
  idx = sum = 0

  while idx < numbers.length
    sum += idx * numbers[idx]

    idx += 1
  end

  return sum
end

puts(crazy_sum([2]) == 0) # (2*0)
puts(crazy_sum([2, 3]) == 3) # (2*0) + (3*1)
puts(crazy_sum([2, 3, 5]) == 13) # (2*0) + (3*1) + (5*2)
puts(crazy_sum([2, 3, 5, 2]) == 19) # (2*0) + (3*1) + (5*2) + (2*3)

def square_nums(max)
  idx = 1
  result = 0

  while idx * idx < max
    result += 1
    idx += 1
  end

  return result
end

puts(square_nums(5) == 2)
puts(square_nums(10) == 3)
puts(square_nums(25) == 4)

def crazy_nums(max)
  idx = 0
  result = []

  while idx < max

    if ( idx % 3 == 0 || idx % 5 == 0 ) && ( idx % 15 != 0 )
      result.push(idx)
    end

    idx += 1
  end

  return result
end

puts(crazy_nums(3) == [])
puts(crazy_nums(10) == [3, 5, 6, 9])
puts(crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18])
