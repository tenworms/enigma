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


end
