require 'date'
require './lib/encrypt'

RSpec.describe Encrypt do
  before :each do

    @encrypt = Encrypt.new("hello world", "02715", "040895")
  end

  it "exists" do
    expect(@encrypt).to be_a Encrypt

  end

  it "has an encryption" do
    expect(@encrypt.encryption).to eq("hello world")

  end

  it "has a key" do
    expect(@encrypt.key).to eq("02715")
  end

  it "has a date" do
    expect(@encrypt.date).to eq("040895")
  end

  xit "can get todays date" do
    expect(@encrypt.date_to_number).to eq("040895")
  end

  it "can generate random key" do
    expect(@encrypt.key_generator.length).to eq(5)
  end

  it "can create the A, B, C, D keys" do
    expect(@encrypt.alphabet_keys).to be_a Integer

  end

  it "can create the date offset" do
    expect(@encrypt.date_offset).to be_a Integer

  end

  it "has the final shifts" do
    expect(@encrypt.shift_key[:A]).to be_a Integer

  end

  it "works" do
    expect(@encrypt.new_message).to eq({:encryption => "keder ohulw" , :key => "02715" , :date => "040895"})

  end


end
