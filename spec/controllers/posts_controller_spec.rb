require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let (:user) { double(:user) }

  describe 'GET /edit ' do
    it 'responds with 200' do
      allow(user).to receive(:id) { 1 }
      sign_in(user)
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      allow(user).to receive(:id) { 1 }
      sign_in(user)
      post :create, params: { post: { message: 'Hello, world!' } }
      expect(response).to redirect_to(posts_url)
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      allow(user).to receive(:id) { 1 }
      sign_in(user)
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
