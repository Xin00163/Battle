require 'player'

describe Player do
  subject(:player_1_name){Player.new("player_1_name")}

  describe "#name" do
    it "returns the players' name" do
    expect(subject.name).to eq "player_1_name"
    end
  end
end
