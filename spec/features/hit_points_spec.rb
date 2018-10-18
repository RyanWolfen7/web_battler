feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 100HP'
  end
end

feature 'Looses hp?' do
  scenario 'see if Player 2 looses hit points' do
    sign_in_and_play
    attack_ok
    expect(page).not_to have_content 'Mittens: 100HP'
    expect(page).to have_content 'Mittens: 90HP'
  end

  scenario 'see if Player 1 looses hit points' do
    sign_in_and_play
    attack_ok
    attack_ok
    expect(page).not_to have_content 'Dave: 100HP'
    expect(page).to have_content 'Dave: 90HP'
  end
end
