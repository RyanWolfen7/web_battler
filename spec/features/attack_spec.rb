feature 'attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    attack_ok
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
