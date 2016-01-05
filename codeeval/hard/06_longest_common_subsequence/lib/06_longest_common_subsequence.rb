def read_string_pairs(filename)
  lines = File.readlines(filename)

  lines.map! do |line|
    line.chomp.split(';')
  end

  lines.reject(&:empty?)
end

def longest_common_subsequence(*strings)
  subsequence = ''
  cloned_strings = strings.map(&:clone)
  loop do
    next_match = first_match(*cloned_strings)
    return subsequence if next_match.empty?
    subsequence << next_match
    cloned_strings.map! do |string|
      string.partition(next_match).last
    end
  end
  subsequence
end

def first_match(*strings)
  matched_character = ''
  best_index_sum = 999
  strings.first.chars do | character |
    index_sum = strings.map do | string |
      string.index(character) || 999
    end
    index_sum = index_sum.reduce(:+)
    if index_sum < best_index_sum
      matched_character = character
      best_index_sum    = index_sum
    end
  end
  matched_character
end

def find_longest_common_subsequences(filename)
  string_pairs = read_string_pairs(filename)

  string_pairs.map do | string_pair |
    longest_common_subsequence(*string_pair)
  end
end

if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  puts find_longest_common_subsequences(filename)
end
