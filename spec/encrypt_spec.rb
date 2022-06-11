require 'date'
require './lib/encrypt'
require './lib/enigma'

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


end
