rows = (1..12).map do | multiplicand |
  (1..12).map do | multiplier |
    format( "%4d", multiplier * multiplicand )
  end.join('').strip
end

puts rows
