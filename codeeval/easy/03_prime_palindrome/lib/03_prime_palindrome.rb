require 'prime'

def is_palindrome?(object)
  object.to_s == object.to_s.reverse
end

def is_prime?(integer)
  integer.to_i.prime?
end

def largest_pralindrime_below(ceiling)
  ceiling.step(7, -1) do |n|
    return n if is_palindrome?(n) && is_prime?(n)
  end
end

if $PROGRAM_NAME == __FILE__
  puts largest_pralindrime_below(1000)
end
