# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'losing a game' do
  scenario 'shows a lose message when player reaches 0 HP' do
    sign_in_and_play
    10.times { click_link('Attack!') }
    click_link('Attack!')
    expect(page).to have_content 'JOHNNY CASH WINS!!!'
  end
end
