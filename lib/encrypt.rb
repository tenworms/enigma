class Encrypt
  attr_reader :encryption, :key, :date, :random_key

  def initialize(argument)
    @encryption = argument[:encryption]
    @key = argument[:key]
    @date = argument[:date]
    @alphabet = ("a".."z").to_a << " "
    @random_key = '%05d' % rand(5 ** 5)
  end

  def keys
    keys = ({
            "A" => @random_key[0..1].to_i,
            "B" => @random_key[1..2].to_i,
            "C" => @random_key[2..3].to_i,
            "D" => @random_key[3..4].to_i
            })
    end






end
