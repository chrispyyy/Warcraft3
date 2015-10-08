require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

describe "#train_seige_engine" do

    it "costs 200 gold, 3 food, and 60 lumber" do
      @barracks.train_seige_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
      expect(@barracks.food).to eq(77) #starts at 80
      expect(@barracks.lumber).to eq(440) #starts at 500
    end

    it "produces a seige_engine unit" do
      seige_engine = @barracks.train_seige_engine
      expect(seige_engine).to be_an_instance_of(SeigeEngine)
    end

end

describe SeigeEngine do

  before :each do
    @seige_engine = SeigeEngine.new
    @seige_engine2 = SeigeEngine.new
  end

  describe "#attack!" do
    it "should be able to attack other seige engines" do
      enemy = @seige_engine2
      expect(@seige_engine2.health_points).to eq(400) # starts at 500
    end
  end

  describe "#attack_building!" do
    it "should be able to attack buildings and do double damage" do
      enemy = @barracks
      expect(@seige_engine2.health_points).to eq(400) # starts at 500
    end
  end


end


  # describe "#damage" do
  #   it "should reduce the unit's health_points by the attack_power specified" do
  #     @barracks.damage(50)
  #     expect(@fbarrack.health_points).to eq(400) # starts at 60
  #   end
  # end
  
  # describe "#attack!" do
  #   it "should not be able to attack a unit (unless seige_engine)" do
      
  #     expect(enemy).to receive(:damage).with(10)
  #     @footman.attack!(enemy)
  #   end
  # end

  # describe "#damage" do
  #   it "should reduce the unit's health_points by the attack_power specified" do
  #     @footman.damage(4)
  #     expect(@footman.health_points).to eq(56) # starts at 60
  #   end
  # end

end
