require_relative './enigma'

encrypted_file, decrypted_file, key, date = ARGV
enigma = Enigma.new
encrypted_text = open(encrypted_file, "r") { |file| file.read }
result = enigma.decrypt(encrypted_text, key, date)
decrypter = open(decrypted_file, "w")
decrypter.write(result[:decryption])
puts "Created '#{decrypted_file}' with the key #{result[:key]} date #{result[:date]}"
# 
# require_relative './enigma'
# enigma = Enigma.new
# input = ARGV[0]
# output = ARGV[1]
# key_input = ARGV[2]
# date_input = ARGV[3]
# decryption = enigma.decrypt(File.read(input).tr("\n", ""), key_input, date_input)
# File.open(output, "w") do |file|
#   file.puts decryption[:decryption]
#   puts "create #{output} with the key #{decryption[:key]} and date #{decryption[:date]}"
# end
