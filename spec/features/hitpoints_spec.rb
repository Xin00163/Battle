feature 'Record hitpoints for player 2' do
  scenario 'after entering names, player 2 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_2_name HP : 100"
  end

  scenario 'after entering names, player 1 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_1_name HP : 100"
  end

end
