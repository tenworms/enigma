require_relative 'encrypt'
require_relative 'decrypt'
require './lib/alphabetable'
require './lib/calculations'
class Enigma
  include Calculations, Alphabetable

  def initialize
  end

  def encrypt(message, key = key_generator, date = date_to_number )
    encrypt = Encrypt.new(message, key , date).encrypt
  end

  def decrypt(message, key, date)
    decrypt = Decrypt.new(message, key, date).decrypt
  end

end
