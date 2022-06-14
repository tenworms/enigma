require_relative 'encrypt'
require_relative 'decrypt'
class Enigma

  attr_reader


  def initialize

  end

  def encrypt(message)
    encrypt = Encrypt.new(message).new_message

  end

  def decrypt(message, key, date)
    decrypt = Decrypt.new(message, key, date).new_message
  end




end
