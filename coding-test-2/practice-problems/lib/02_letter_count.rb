# The function, `letter_count(str)` takes a string and
# returns a hash mapping each letter to its frequency.
# Ignores spaces.
#
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


def letter_count(str)
  characters = str.downcase.split("")
  hashes = {}
  
  characters.each do |character|
    
    if character >= "a" && character <= "z"
      hashes[character] = hashes[character] ? hashes[character] + 1 : 1
    end
    
  end
  
  hashes
end