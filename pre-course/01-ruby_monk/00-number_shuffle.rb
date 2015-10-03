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
  return results.uniq.sort
end

puts number_shuffle(123456789)
