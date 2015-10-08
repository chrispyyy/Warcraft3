#Enhancement 4

require_relative 'spec_helper'
#add lumber
describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should have an initial 500 lumber" do
    expect(@barracks.lumber).to eq(500)
  end

  
end
