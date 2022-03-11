feature 'player attack' do
  scenario 'can attack player 2 and confirm' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Sam has attacked Harry'
  end

  scenario 'can attack player 2 and reduce HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Harry: 90'
  end
end