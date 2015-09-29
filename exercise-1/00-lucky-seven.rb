def lucky_sevens?(numbers)

    if numbers.length <3
        return false
    end

    idx = 0

    while idx <= numbers.length - 3

        if numbers[idx] + numbers[idx+1] + numbers[idx+2] == 7
            return true
        end

        idx += 1
    end

    return false

end

puts(lucky_sevens?([2,1,5,1,0]) == true) # => 1 + 5 + 1 == 7
puts(lucky_sevens?([0,-2,1,8]) == true) # => -2 + 1 + 8 == 7
puts(lucky_sevens?([7,7,7,7]) == false)
puts(lucky_sevens?([3,4,3,4]) == false)
