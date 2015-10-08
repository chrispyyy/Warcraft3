require 'pry'
require_relative 'footman'
require_relative 'peasant'


class Barracks

attr_accessor :gold, :food, :health_points, :lumber


  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
    
  end


  def damage(attack_power)
   self.health_points -= (attack_power/2).ceil
  end

  def train_footman
    if can_train_footman?
      @gold -=135
      @food -=2
      @footman = Footman.new
    else
      nil
    end
  end

  def can_train_footman?
    gold >= 135 && food >=2
  end

  def train_peasant
    if can_train_peasant?
      @gold -=90
      @food -=5
      @peasant = Peasant.new
    else
      nil
    end
  end

  def can_train_peasant?
    gold >= 90 && food >=5
  end

  def can_train_seige_engine?
    gold >= 200 && food >=3 && lumber >=60
  end

  def train_seige_engine
    if can_train_seige_engine?
      @gold -=200
      @food -=3
      @lumber -=60
      @seige_engine = SeigeEngine.new
    else
      nil
    end
  end

 
end
