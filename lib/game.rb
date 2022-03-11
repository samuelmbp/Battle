require_relative 'player'

class Game
  attr_reader :players

  def initialize(player_class=Player)
    @players = []
    @player_class = player_class
  end

  def add_new_player(name)
    @players << @player_class.new(name)
  end

  def attack(player)
    player.get_damage
  end
end