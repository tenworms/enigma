require_relative 'encrypt'
require_relative 'decrypt'
class Enigma

  def initialize
  end

  def encrypt(message, key = key_generator, date = date_to_number )
    encrypt = Encrypt.new(message, key, date).new_message
  end

  def decrypt(message, key, date)
    decrypt = Decrypt.new(message, key, date).new_message
  end

end
