class Encrypt
  attr_reader :encryption, :key, :date

  def initialize(argument)
    @encryption = argument[:encryption]
    @key = argument[:key]
    @date = argument[:date]
    @alphabet = ("a".."z").to_a << " "
    @random_key = '%05d' % rand(5 ** 5)
  end






end
