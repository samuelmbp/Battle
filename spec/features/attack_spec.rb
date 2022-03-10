feature 'player attack' do
  scenario 'can attack player 2 and confirm' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Sam has attacked Harry'
  end
end