def score( dice )
  score = 0
  dice = dice.sort.join
  (1..6).each do |n|
    dice.scan(/#{n}{3}/) do |triple|
      score += (triple[0] == "1" ? 1000 : triple[0].to_i * 100)
      dice = dice.sub(triple, "")
    end
  end
  dice.scan(/[1]/) {|n| score += 100}
  dice.scan(/[5]/) {|n| score += 50}
  score
end

score( [1,1,1,1,5])
