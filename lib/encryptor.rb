require_relative './enigma'
require_relative './alphabetable'
require_relative './calculations'
require_relative './encrypt'
#
# message, encrypted_file = ARGV
# enigma = Enigma.new
# message_text = open(message, "r") { |file| file.read }
# result = enigma.encrypt(message_text)
# encrypter = open(encrypted_file, "w")
# encrypter.write(result[:encryption])
# puts "Created '#{encrypted_file}' with the key #{result[:key]} date #{result[:date]}"

#
# require_relative 'enigma'
# require_relative 'encrypt'
enigma = Enigma.new
input = ARGV[0]
output = ARGV[1]
encryption = enigma.encrypt(File.read(input).tr("\n", ""), "02715", "040895")
writer = File.write("./encrypted.txt",encryption[:encryption])
puts "create #{output} with the key #{encryption[:key]} and date #{encryption[:date]}"

# message = File.open(ARGV[0], "r")
#
# incoming_text = message.read.downcase
#
# message.close
#
# enigma = Enigma.new
#
# encrypted_text = enigma.encrypt(incoming_text)
#
# writer = File.open(ARGV[1], "w")
#
# writer.write(encrypted_text[:encryption])
#
# writer.close
#
# puts "Created #{ARGV[1]} with the key #{enigma.encrypt[:key]} and date #{enigma.encrypt[:date]}"
