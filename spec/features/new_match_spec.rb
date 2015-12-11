# As two Players
# So we can have more fun
# we want to start a new match

feature 'starting of new match' do
  scenario 'allows to go back to initial screen after match ends' do
    sign_in_and_play
    11.times { click_link('Attack!') }
    click_link('Start new match!')
    expect(page).to have_content 'Battle!'
  end
end
