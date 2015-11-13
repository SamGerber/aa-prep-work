require "prime"
# Returns the sum of the first n prime numbers
#
# ==== Attributes
#
# * +n+ - How many primes will be generated and summed.
#
# ==== Examples
#
#   # Sum the first 1000 prime numbers
#   # increment the action_count by 1
#   sum_of_primes(1000)
#   # => 3_682_913
def sum_of_primes(n)
  Prime.first(n).inject(0, :+)
end

puts sum_of_primes 1000
