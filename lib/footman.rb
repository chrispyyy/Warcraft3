# http://classic.battle.net/war3/human/units/footman.shtml

require 'pry'
require_relative 'unit'

class Footman < Unit

attr_accessor :health_points, :attack_power

  def initialize
    @health_points = 60
    @attack_power = 10
 
  end


  # def attack!(enemy)
  #   enemy.damage(@attack_power)
  # end


  # def damage(attack_power)
  #  self.health_points -= attack_power
  # end


end
