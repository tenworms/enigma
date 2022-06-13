class Decrypt
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "

  end

  def alphabet_keys
    @a_key = @key[0..1].to_i
    @b_key = @key[1..2].to_i
    @c_key = @key[2..3].to_i
    @d_key = @key[3..4].to_i
  end

  def date_offset
    last_4 = (@date.to_i ** 2).to_s[-4..-1]
    @a_offset = last_4[0].to_i
    @b_offset = last_4[1].to_i
    @c_offset = last_4[2].to_i
    @d_offset = last_4[3].to_i
  end

  def shift_key
    alphabet_keys
    date_offset
    @shift = {
              :A => ((@a_key + @a_offset)%27),
              :B => ((@b_key + @b_offset)%27),
              :C => ((@c_key + @c_offset)%27),
              :D => ((@d_key + @d_offset)%27)
              }
  end

  def a_final
    shift_key
     Hash[@alphabet.zip(@alphabet.rotate(@shift[:A]))]
  end
  def b_final
    shift_key
      Hash[@alphabet.zip(@alphabet.rotate(@shift[:B]))]
   end
   def c_final
     shift_key
     Hash[@alphabet.zip(@alphabet.rotate(@shift[:C]))]
   end
   def d_final
     shift_key
      Hash[@alphabet.zip(@alphabet.rotate(@shift[:D]))]
   end

   def reverse_a
     a_final.invert
     end
  def reverse_b
    b_final.invert
  end
  def reverse_c
    c_final.invert
  end
 def reverse_d
   d_final.invert
  end

   def new_message
     message = @message.downcase.chars
     decrypted = message.each_with_index.map do |char, i|
       if i % 4 == 0
         char = reverse_a[char]
       elsif i % 4 == 1
         char = reverse_b[char]
       elsif i % 4 == 2
         char = reverse_c[char]
       elsif i % 4 == 3
         char = reverse_d[char]
       end
     end
     {:decrypted => decrypted.join, :key => @key, :date => @date}
   end


end
