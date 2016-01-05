def file_size(filename)
  File.size(filename)
end


if $PROGRAM_NAME == __FILE__
  filename = ARGV[0]
  puts file_size(filename)
end
