Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"

  resources :posts do
    resources :translated_posts
  end
  resources :translated_posts, only: [:index]
end
