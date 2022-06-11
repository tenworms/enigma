require 'date'
require './lib/enigma'

RSpec.describe Enigma do

  before :each do
    @enigma = Enigma.new #"hello world", "02715", "040895"
  end

  it "exists" do
    expect(@enigma).to be_a Enigma
  end


end
