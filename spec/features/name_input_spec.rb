feature 'Player names' do
  scenario 'expects player to enter name into a field' do
    sign_in_and_play
    expect(page).to have_content 'Sam vs. Harry'
  end

  scenario 'expects to see player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Harry Health: 100 HP'
  end
end