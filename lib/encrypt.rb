require './lib/alphabetable'
require './lib/calculations'
class Encrypt
  include Alphabetable, Calculations
  attr_reader :encryption, :key, :date, :random_key, :keys

  def initialize(message, key = key_generator, date = date_to_number)
    @encryption = message
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "
    @shift = Hash.new(0)
  end

  def date_to_number
    @date = Time.now.strftime("%m%d%y")
  end

   def encrypt
     message = @encryption.downcase.chars
     encrypted = message.each_with_index.map do |char, i|
       if i % 4 == 0 then char = a_final[char]
       elsif i % 4 == 1 then char = b_final[char]
       elsif i % 4 == 2 then char = c_final[char]
       elsif i % 4 == 3 then char = d_final[char]
       end
     end
     {:encryption => encrypted.join, :key => @key, :date => @date}
   end
end
