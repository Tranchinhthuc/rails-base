Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "posts#index"

  resources :posts do
    resources :translated_posts
    resources :comments
    resources :votes
  end

  resources :translated_posts, only: [:index] do
    resources :comments
    resources :votes
  end
end
