require './lib/game'


describe Game do
  subject(:game){described_class.new}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe "#attack" do
    it "allows player_1 to reduce the hitpoints of player_2" do
    expect(player_2).to receive(:hit_points)
    game.attack(player_2)
    end
  end
end
