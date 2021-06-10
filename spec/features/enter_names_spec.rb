feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Mike'
    fill_in :player_2_name, with: 'Arch Nemesis'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Mike vs. Arch Nemesis'
    
  end
end