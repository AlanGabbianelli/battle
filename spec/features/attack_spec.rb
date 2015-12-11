# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
#
# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation

feature 'Player 1 attacks player 2' do
  scenario 'confirms player 2 has been attacked' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones has been attacked by Johnny Cash!'
  end

  scenario 'confirms player 1 has been attacked' do
    sign_in_and_play
    2.times { click_link('Attack!') }
    expect(page).to have_content 'Johnny Cash has been attacked by Timmy Jones'
  end
end
