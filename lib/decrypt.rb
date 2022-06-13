class Decrypt
  attr_reader :message, :key

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

end
