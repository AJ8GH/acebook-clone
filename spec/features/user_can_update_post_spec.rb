feature 'updating own posts' do

  scenario 'user can update their own posts' do
    sign_up_as_testy

    fill_in('post_message', with: 'test post')
    click_button('Submit')
    expect(page).to have_content('test post')

    click_button('Update')
    fill_in('post', with: 'new post')
    click_button('Submit')

    expect(page).not_to have_content('test post')
    expect(page).to have_content('new post')
  end

  scenario "users can't edit other peoples posts" do
    sign_up_as_testy

    page.find('#post_message', visible: :all)
    fill_in('post_message', with: 'test post')
    click_button('Submit')
    expect(page).to have_content('test post')

    click_link("sign-out-button")

    sign_up_as_specy

    expect(page).not_to have_button "Update"
  end
end
