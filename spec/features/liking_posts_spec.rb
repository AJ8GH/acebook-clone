feature 'liking posts' do
  scenario 'posts can be liked' do
    sign_up_as_testy

    fill_in 'post_message', with: 'This post is likeable'
    click_button 'Submit'

    expect(page).to have_content('This post is likeable')
    expect(page).to have_selector('.like_count', text: '0')
    expect(Post.first.get_likes.count).to be(0)

    click_on(class: 'like-btn')
    expect(Post.first.get_likes.count).to be(1)
  end
end
