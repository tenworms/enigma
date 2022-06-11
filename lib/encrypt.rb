class Encrypt
  attr_reader :encryption, :key, :date

  def initialize(argument)
    @encryption = argument[:encryption]
    @key = argument[:key]
    @date = argument[:date]
  end




end
