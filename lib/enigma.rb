class Enigma
  attr_reader


  def initialize
  end

  def encrypt(message, key, date)
   task = Encrypt.new({
                      encryption: message,
                      key: key,
                      date: date
                      })
              end



end
