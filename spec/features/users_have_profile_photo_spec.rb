feature 'profile photos' do
  scenario 'a user can upload a profile photo' do
    sign_up_as_testy

    click_link('edit-button')
    attach_file('formFile', 'spec/images/profile_photo.png')
    fill_in('current_password', with: 'Password12')
    click_button('Update')


    expect(page).to have_css('img[src*="profile_photo.png"]')
  end
end

#
#     expect(page).to have_content('Llama')
#     expect(current_path).to eq('/posts')
#   end
