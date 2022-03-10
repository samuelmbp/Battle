require 'player'

describe Player do
  subject(:player) { described_class.new('Harry') }

  it 'returns the name of the player' do
    expect(player.player_name).to eq 'Harry'
  end
end