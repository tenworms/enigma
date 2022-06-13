require 'date'
require './lib/decrypt'

RSpec.describe Decrypt do
  before :each do
    @decrypt = Decrypt.new("keder ohulw", "02715", "040895")
  end

  it "exists" do
    expect(@decrypt).to be_a Decrypt
  end

  it "has a coded message" do
    expect(@decrypt.message).to eq("keder ohulw")
  end

  it "has a key" do
    expect(@decrypt.key).to eq("02715")

  end

end
