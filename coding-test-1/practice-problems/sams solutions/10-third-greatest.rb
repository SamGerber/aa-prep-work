# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  idx = temp = 0
  
  while idx < 3
    jdx = 1

    while jdx < nums.size

      if nums[ jdx-1 ] > nums[ jdx ]
        temp = nums[ jdx-1 ]
        nums[ jdx-1 ] = nums[ jdx ]
        nums[jdx] = temp
      end

      jdx += 1
    end

    idx += 1
    temp = nums.pop
  end

  return temp
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
