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

  it "has a date" do
    expect(@decrypt.date).to eq("040895")
  end

  it "can create the A, B, C, D key" do
    expect(@decrypt.alphabet_keys).to be_a Integer
  end

  it "can create the date offset" do
    expect(@decrypt.date_offset).to be_a Integer
  end

  it "has the final shifts" do
    expect(@decrypt.shift_key[:A]).to be_a Integer
  end

  it "can decrypt a message" do
    expect(@decrypt.decrypt).to eq({:decryption => "hello world" , :key => "02715" , :date => "040895"})

  end

  it "can decrypt a message without being given a date(today's date)" do
   decryption = Decrypt.new("hello world", "12345")
   expect(decryption.decrypt).to be_a Hash
   expect(decryption.decrypt[:key].length).to eq(5)
   expect(decryption.decrypt[:decryption] == "hello world").to eq(false)
   expect(decryption.decrypt[:decryption]).to be_a(String)
 end



end
