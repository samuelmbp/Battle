require 'game'

describe Game do
  let(:player_class) { double(:player_class) }
  subject(:game) { described_class.new(player_class) }
  let(:player_2) { double(:player_1) }

  describe '#new' do
    it 'starts a game with an empty players array' do
      expect(game.players).to eq []
    end
  end

  describe '#add_new_player' do
    it 'adds to the players array' do
      allow(player_class).to receive(:new)
      game.add_new_player('Sam')
      expect(game.players.size).to eq 1
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:get_damage)
      game.attack(player_2)
    end
  end
end