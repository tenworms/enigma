require './lib/alphabetable'
require './lib/calculations'

class Decrypt
  include Alphabetable, Calculations
  attr_reader :message, :key, :date

  def initialize(message, key, date = date_to_number)
    @message = message
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "
  end

   def decrypt
     message = @message.downcase.chars
     decrypted = message.each_with_index.map do |char, i|
       if i % 4 == 0 then char = reverse_a[char]
       elsif i % 4 == 1 then char = reverse_b[char]
       elsif i % 4 == 2 then char = reverse_c[char]
       elsif i % 4 == 3 then char = reverse_d[char]
       end
     end
     {:decryption => decrypted.join, :key => @key, :date => @date}
   end
end
