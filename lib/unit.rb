
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
    enemy.damage(@attack_power) unless self.dead?
  end

  def damage(attack_power)
   self.health_points -= attack_power unless self.dead?
  end

  def dead?
    self.health_points <= 0
  end

  # def attack?
  #   self.health_points >0
  # end


end