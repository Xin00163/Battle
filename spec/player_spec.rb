require './lib/player'


describe Player do
  subject(:player_1_name){Player.new("player_1_name")}
  subject(:player_2_name){Player.new("player_2_name")}

  describe "#name" do
    it "returns the players' name" do
    expect(player_1_name.name).to eq "player_1_name"
    end
  end

end
