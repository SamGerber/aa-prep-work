def weirdcase string
  a = string.downcase.split.map{|word| word.chars.map.with_index{|c, i| i.even? ? c.upcase : c}.join}
  string
end

weirdcase('This is a test')
