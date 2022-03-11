class Player
  attr_reader :name, :health
  
  DAMAGE_POINTS = 10
  PLAYER_HEALTH = 100

  def initialize(name, health=PLAYER_HEALTH)
    @name = name
    @health = health
  end

  def reduce_health(player)
    player.get_damage
  end

  def get_damage
    @health -= DAMAGE_POINTS
  end
end