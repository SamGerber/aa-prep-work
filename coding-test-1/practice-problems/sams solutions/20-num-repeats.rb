# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  clone = string # Clone string, as this will be destructive test
  idx = jdx = 0 # Position in String
  did_repeat = false # Flag
  ctr = 0 # Counter

  while idx < string.length # iterate through string by letter
    jdx = idx + 1

    if clone[idx] != " " # if character hasn't already been counted

      while jdx < string.length # iterate through right end of string

        if clone[jdx] == clone[idx] # looking for matches
          did_repeat = true # set a flag when one is found
          clone[jdx] = " " # set any further matches to spaces
        end

        jdx +=1
      end

      if did_repeat # check flag
        ctr += 1
        did_repeat = false
      end

    clone[idx] = " "
    end

    idx += 1
  end

  return ctr
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
