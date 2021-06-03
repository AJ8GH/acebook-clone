require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /edit ' do
    it 'responds with 200' do
      user = create(:user)
      sign_in(user)

      get :new

      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'creates a post' do
      user = create(:user)
      sign_in(user)

      expect do
        post :create, params: {
          post: { message: 'Hello, world!', user_id: user.id }
        }
      end.to change { Post.count }.by(1)

      expect(response).to redirect_to(posts_url)
    end
  end

  describe 'DESTROY' do
    it 'Deletes a post when user id matches post user id' do
      user = create(:user)
      sign_in(user)

      post = create(:post, user: user)

      expect do
        delete :destroy, params: { id: post.id, user_id: user.id }
      end.to change(Post, :count).by(-1)
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      user = create(:user)
      sign_in(user)

      get :index

      expect(response).to have_http_status(200)
    end
  end

  describe 'Update' do
    it 'updates post info when user id matches post user id' do
      user = create(:user)
      sign_in(user)

      post = create(:post, user: user)

      expect(post.message).to eq('Test post')

      patch :update, params: { id: post.id, user_id: user.id, post: 'New message' }

      edited_post = Post.find_by(id: post.id)

      expect(edited_post.message).to eq('New message')
    end
  end
end
