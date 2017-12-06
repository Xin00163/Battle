feature 'Record hitpoints for player 2' do
  scenario 'after entering names, player 2 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_2_name HP : 100"
  end

  scenario 'after entering names, player 1 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_1_name HP : 100"
  end

  scenario 'player1 attack buttons render after names are entered' do
    sign_in_and_play
    find_button("Attack player_2_name").visible?
  end

  scenario 'player2 attack buttons render after names are entered' do
    sign_in_and_play
    find_button("Attack player_1_name").visible?
  end


end
