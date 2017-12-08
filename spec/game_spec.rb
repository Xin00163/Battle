require './lib/game'
require './lib/player'


describe Game do
  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

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
    expect(game.player_2).to receive(:attacked)
    game.attack(player_2)
    end

    it "allows player_2 to reduce the hitpoints of player_1" do
    expect(game.player_1).to receive(:attacked)
    game.attack(player_1)
    end
  end

  describe "#switch turns" do
    it "switches turns once the player_2 has been attacked" do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
end
