require_relative 'encrypt'
class Enigma
  attr_reader


  def initialize

  end

  def encrypt(message, key, date)
    encrypt = Encrypt.new(message, key, date).new_message
  #   encrypted_hash = {
  #                     encryption: @encrypt.new_message,
  #                     key: key
  #                     date: date
  #                     }
  end



end
