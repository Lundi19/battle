def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Mike'
    fill_in :player_2_name, with: 'Arch Nemesis'
    click_button 'Submit'
end