feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content "Mike vs. Arch Nemesis"
  end
end