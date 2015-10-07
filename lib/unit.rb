
require 'pry'

class Unit

attr_accessor :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def health_points
    @health_points
  end

 def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(attack_power)
   self.health_points -= attack_power
  end


end