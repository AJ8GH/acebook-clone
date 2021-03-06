Rails.application.routes.draw do
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    member do
      put 'like' => 'posts#like'
    end
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
