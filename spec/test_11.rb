require_relative 'spec_helper'
#Enhancement 1
#add HP to barracks
#Footman will do half attack power to a building
describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "should have an initial 500 hp" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should reduce the health_points by half the attack power" do
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(495)
    end
  end
end


# Enchanement 2

describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#damage" do
    it "should reduce the unit's health_points to test dead?" do
      @footman.damage(60)
      expect(@footman.health_points).to eq(0) # starts at 60
      @footman.dead?
    end
  end

end

  # describe "#attack!" do
  #   it "should do deal 10 (AP) damage to the enemy unit" do
  #     enemy = Footman.new
  #     expect(enemy).to receive(:damage).with(10)
  #     @footman.attack!(enemy)
  #   end
  # end

#   describe "#attack_building!" do
#     it "should deal 5 (AP) damage to the building" do
#       building = Footman.new
#       expect(building).to recieve(:damage).with(5)
#       @footman.attack_building!(building)
#     end
#   end


# end