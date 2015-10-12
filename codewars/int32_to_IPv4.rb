def int32_to_ip(int32)
  binary = int32.to_s(2).rjust(32, "0")
  ip_address = binary.scan(/\d{8}/).map {|octet| octet.to_i(2).to_s}.join(".")
end

puts int32_to_ip 2154959208
puts int32_to_ip 0
