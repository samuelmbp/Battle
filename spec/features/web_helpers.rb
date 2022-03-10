def sign_in_and_play
  visit '/'
  fill_in 'player1_name', with: 'Sam'
  fill_in 'player2_name', with: 'Harry'
  click_on 'Fight!'
end
