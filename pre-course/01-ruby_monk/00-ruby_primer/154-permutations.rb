# Problem Statement
# Given a 3 or 4 digit number with distinct digits, return a sorted array
# of all the unique numbers that can be formed with those digits.
#
# Example:
# Given: 123
# Return: [123, 132, 213, 231, 312, 321]
#
# https://rubymonk.com/learning/books/1-ruby-primer/problems/154-permutations

def number_shuffle(number)
  results = []
  if number < 100
   results = [number, number.to_s.reverse!.to_i]
  else

    number = number.to_s
    results = []

    digits = number.split("")
    digits.each do |digit|
      other_digits = number.sub(digit, "")
      scrambled_others = []
      scrambled_others = number_shuffle(other_digits.to_i)
      scrambled_others.each do |scrambled_other|
        result = digit + scrambled_other.to_s
        result = result.to_i
        results << result
      end
    end
  end
  return results.sort
end
