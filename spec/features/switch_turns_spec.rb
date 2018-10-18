feature 'Switch turns' do
  scenario 'at the start of the game p1 turn' do
    sign_in_and_play
    expect(page).to have_content "Dave's turn"
  end

  scenario 'after player 1 attacks p2 turn' do
    sign_in_and_play
    attack_ok
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content "Mittens's turn"
  end
end
