feature 'Player names' do
  scenario 'expects player to enter name into a field' do
    visit '/'
    fill_in 'player1_name', with: 'Sam'
    fill_in 'player2_name', with: 'Harry'
    click_on 'Submit'
  end
end