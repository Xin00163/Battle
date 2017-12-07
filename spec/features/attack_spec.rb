feature "Attack" do
  scenario 'player1 attack buttons render after names are entered' do
    sign_in_and_play
    find_button("Attack player_2_name").visible?
  end

  scenario 'player2 attack buttons render after names are entered' do
    sign_in_and_play
    find_button("Attack player_1_name").visible?
  end

  scenario 'player1 attacks player2 and is notified' do
    sign_in_and_play
    click_button("Attack player_2_name")
    visit '/attack'
    expect(page).to have_content "player_1_name attacked player_2_name"
  end


end
