# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  idx = jdx = ctr = 0
  most = [ string[idx], 1 ]

  while idx < string.length  # Iterate through string

    while jdx < string.length  # Iterate through remainder of string

      if string[jdx] == string[idx]  # Count matches
        ctr += 1
      end

      jdx += 1
    end

    if ctr > most[1]  # If more common, update
      most = [string[idx], ctr]
    end

    jdx = idx += 1
    ctr = 0
  end

  return most
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
