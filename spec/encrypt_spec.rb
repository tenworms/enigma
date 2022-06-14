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
    expect(@encrypt.encrypt).to eq({:encryption => "keder ohulw" , :key => "02715" , :date => "040895"})
  end

  it "has rotated alphabets for the A key" do
    expect(@encrypt.a_final).to be_a Hash
    expect(@encrypt.a_final.first).to eq(["a", "d"])
    expect(@encrypt.a_final.count).to eq(27)
  end

  it "has rotated alphabets for the B key" do
    expect(@encrypt.b_final).to be_a Hash
    expect(@encrypt.b_final.first).to eq(["a", "a"])
    expect(@encrypt.b_final.count).to eq(27)
  end
  it "has rotated alphabets for the C key" do
    expect(@encrypt.c_final).to be_a Hash
    expect(@encrypt.c_final.first).to eq(["a", "t"])
    expect(@encrypt.c_final.count).to eq(27)
  end 

  it "has rotated alphabets for the D key" do
    expect(@encrypt.d_final).to be_a Hash
    expect(@encrypt.d_final.first).to eq(["a", "u"])
    expect(@encrypt.d_final.count).to eq(27)
  end

  it "can encrypt a message without being given a key or date" do
    encryption = Encrypt.new("hello world")
    expect(encryption.encrypt).to be_a Hash
    expect(encryption.encrypt[:key].length).to eq(5)
    expect(encryption.encrypt[:encryption]).to be_a(String)
    expect(encryption.encrypt[:encryption] == "hello world").to eq(false)
  end


end
