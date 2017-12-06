feature 'Record hitpoints for player 2' do
  scenario 'after entering names, player 2 has 100 hitpoints' do
    visit ('/')
    fill_in :player_1_name, :with => "player_1_name"
    fill_in :player_2_name, :with => 'player_2_name'
    click_button('Submit')
    expect(page).to have_content "player_2_name HP : 100"
  end

  # scenario 'after entering names, player 1 has 100 hitpoints' do
  #   visit ('/')
  #   fill_in :player_1_name, :with => "player_1_name"
  #   fill_in :player_2_name, :with => 'player_2_name'
  #   click_button('Submit')
  #   expect(page).to have_content "player_1_name HP : 100"
  # end

end
