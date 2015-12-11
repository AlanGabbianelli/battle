# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
#
# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP

feature 'Reduce hit points' do
  scenario 'reduces player 2\'s HP after player 1\'s attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones: 50 HP'
  end

  scenario 'reduces player 1\'s HP after player 2\'s attack' do
    sign_in_and_play
    2.times { click_link('Attack!') }
    expect(page).to have_content 'Johnny Cash: 50 HP'
  end
end
