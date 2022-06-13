class Decrypt
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
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

end
