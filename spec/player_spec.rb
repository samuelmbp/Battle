require 'player'

describe Player do
  subject(:samuel) { described_class.new('Samuel') }
  subject(:harry) { described_class.new('Harry') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(samuel.name).to eq 'Samuel'
    end
  end 

  describe '#health' do
    it 'returns the health points of a player' do
      expect(samuel.health).to eq Player::PLAYER_HEALTH
    end
  end

  describe '#reduce_health' do
    it 'damages the player' do
      expect(harry).to receive(:get_damage)
      samuel.reduce_health(harry)
    end
  end

  describe '#get_damage' do
    it 'reduces the players health' do
      harry.get_damage
      expect(harry.health).to eq 90
    end
  end
end