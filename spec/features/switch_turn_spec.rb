# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Switch turn' do
  scenario 'allows players to switch turn after an attack' do
    sign_in_and_play
    expect(page).to have_content 'Johnny Cash\'s turn'
  end

  scenario 'allows players to switch turn after an attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Timmy Jones\'s turn'
  end
end
