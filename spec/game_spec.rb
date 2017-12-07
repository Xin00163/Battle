require './lib/game'


describe Game do
  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe "#player_1" do
    it "shows the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "shows the first player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "allows player_1 to reduce the hitpoints of player_2" do
    expect(game.player_2).to receive(:hit_points)
    game.attack(player_2)
    end
  end
end
