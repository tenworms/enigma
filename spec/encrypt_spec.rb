require 'date'
require './lib/encrypt'

RSpec.describe Encrypt do
  before :each do

    @encrypt = Encrypt.new({
                            encryption: "hello world",
                            key: "02715",
                            date: "040895"
                            })
  end

  it "exists" do
    expect(@encrypt).to be_a Encrypt

  end

  it "has a encryption" do
    expect(@encrypt.encryption).to eq("hello world")

  end

  it "has a key" do
    expect(@encrypt.key).to eq("02715")
  end

  xit "has a date" do
    expect(@encrypt.date).to eq("040895")
  end

  it 'can create a random key' do
    expect(@encrypt.random_key.length).to eq(5)
  end

  it "can create the A, B, C, D keys" do
    expect(@encrypt.alphabet_keys).to be_a Integer

  end


end
