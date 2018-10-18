class Player

  DEFAULT_HP = 100
  DEFAULT_DMG = 10

  attr_reader :name, :hp

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hp = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= DEFAULT_DMG
  end
end
