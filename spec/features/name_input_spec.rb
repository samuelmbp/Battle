feature 'Player names' do
  scenario 'expects player to enter name into a field' do
    visit '/'
    fill_in 'player1_name', with: 'Sam'
    fill_in 'player2_name', with: 'Harry'
    click_on 'Fight!'

    save_and_open_page
    expect(page).to have_content 'Sam vs Harry'
  end
end