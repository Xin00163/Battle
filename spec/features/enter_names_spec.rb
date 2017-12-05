feature 'Testing enter names' do

  scenario 'entering player ones name thn submitting saves the name of player one' do
    visit ('/')
    fill_in :player_1_name, :with => "Tom"
    fill_in :player_2_name, :with => 'Nikolas'
    click_button('Submit')
    expect(page).to have_content "Tom vs Nikolas"
  end

end
