require 'date'
require './lib/enigma'

RSpec.describe Enigma do

  before :each do
    @enigma = Enigma.new #"hello world", "02715", "040895"
  end

  it "exists" do
    expect(@enigma).to be_a Enigma
  end

  it "has a message, key and date" do
    @enigma.encrypt("hello world", "02715", "040895")
    expect(@enigma.message).to eq("hello world")
    expect(@enigma.key).to eq("02715")
    expect(@enigma.date).to eq("040895")

  end


end
