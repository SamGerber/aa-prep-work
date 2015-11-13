require "02_sum_of_primes"

# Write a program which determines the sum of the first 1000 prime numbers.

describe "the sum of primes method" do
  it "sums primes less than 1000" do
    expect(sum_of_primes(1000)).to eq(3_682_913)
  end
end
