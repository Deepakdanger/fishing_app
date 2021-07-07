Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  root "articles#index"
  resources :categories, only: [:show]
end
