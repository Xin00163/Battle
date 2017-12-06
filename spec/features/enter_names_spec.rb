feature 'Testing enter names' do

  scenario 'entering the players names then submitting brings us to the next page' do
    sign_in_and_play
    expect(page).to have_content "player_1_name vs player_2_name"
  end
end
