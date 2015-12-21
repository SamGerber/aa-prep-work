require "03_prime_palindrome.rb"

# Write a program which determines the largest prime palindrome
# less than 1000.
#
# INPUT SAMPLE:
#
# There is no input for this program.
#
# OUTPUT SAMPLE:
#
# Print to stdout the largest prime palindrome less than 1000.
#
# 929

describe "the is_palindrome? method" do
  it "finds FixNum palindromes between 100 and 150" do
    palindromes = (100..150).select do | number |
      is_palindrome?(number)
    end
    answer = [ 101, 111, 121, 131, 141 ]
    expect(palindromes).to eq(answer)

  end
end

describe "the is_prime? method" do
  it "finds primes between 100 and 150" do
    primes = (100..150).select do | number |
      is_prime?(number)
    end
    answer = [ 101, 103, 107, 109, 113,
               127, 131, 137, 139, 149 ]
    expect(primes).to eq(answer)
  end
end

describe "the largest_pralindrime_below method" do
  it "finds the largest pralindrime below 1000" do
    expect(largest_pralindrime_below(1000)).to eq(929)
  end
end
