feature 'Record hitpoints for player 2' do
  scenario 'after entering names, player 2 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_2_name HP : 100"
  end

  scenario 'after entering names, player 1 has 100 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "player_1_name HP : 100"
  end

  scenario 'after player 1 attacked player 2, player2\'s hitpoints reduce 10' do
    sign_in_and_play
    click_button("Attack player_2_name")
    visit '/attack'
    expect(page).to have_content "player_2_name HP : 90"
  end


end
