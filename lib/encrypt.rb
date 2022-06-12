class Encrypt
  attr_reader :encryption, :key, :date, :random_key, :keys

  def initialize(argument)
    @encryption = argument[:encryption]
    @key = argument[:key]
    @date = argument[:date]
    @alphabet = ("a".."z").to_a << " "
    @random_key = '%05d' % rand(10 ** 4)
    @date = Time.now.strftime("%m%d%y")
    @shift = Hash.new(0)

  end

  def alphabet_keys
    @a_key = @random_key[0..1].to_i
    @b_key = @random_key[1..2].to_i
    @c_key = @random_key[2..3].to_i
    @d_key = @random_key[3..4].to_i

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
              :A => (@a_key + @a_offset),
              :B => (@b_key + @b_offset),
              :C => (@c_key + @c_offset),
              :D => (@d_key + @d_offset)
              }
              require "pry"; binding.pry
  end




end
