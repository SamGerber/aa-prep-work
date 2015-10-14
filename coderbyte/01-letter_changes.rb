def LetterChanges(str)

  str = str.each_char.map do |c|
    if c =~/[dDhHnNtT]/
      c.next.upcase
    elsif c =~ /[a-yA-Y]/
      c.next
    elsif c =~ /[zZ]/
      (c.ord - 25).chr.upcase
    else
      c
    end
  end.join

  return str

end

# keep this function call here
# to see how to enter arguments in Ruby scroll down
puts LetterChanges(STDIN.gets)
