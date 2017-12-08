
feature "Swtich turns" do
  scenario 'see the current turn' do
    sign_in_and_play
    expect(page).to have_content "player_1_name's turn"
  end
end
