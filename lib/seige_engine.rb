require 'pry'
require_relative 'unit'

class SeigeEngine < Unit

attr_accessor :health_points, :attack_power

  def initialize
    @health_points = 400
    @attack_power = 50
 
  end

  def attack!(enemy)
    if enemy == seige_engine
      enemy.damage(@attack_power) unless self.dead?
    else
      nil
    end
  end

  def attack_building!(enemy)
    if enemy == barracks
      enemy.damage(@attack_power*4) unless self.dead?
      #*4 because damage for building is 1/2
    else
      nil
    end
  end

  def damage(attack_power)
   self.health_points -= attack_power unless self.dead?
  end

  def dead?
    self.health_points <= 0
  end

end
