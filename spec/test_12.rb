require_relative 'spec_helper'
#Enhancement 3

describe Unit do

  before :each do
    @unit1 = Unit.new(30,10)
    @unit2 = Unit.new(0,10)
  end

  describe "#attack!" do
    it "should not allow a dead unit to attack a live unit" do
      expect(@unit2.attack!(@unit1)).to be_falsey
    end
  end

  describe "#attack!" do
    it "should not allow a live unit to attack a dead unit" do
      expect(@unit1.attack!(@unit2)).to be_falsey
    end
  end

end