Rails.application.routes.draw do
  devise_for :users
  root "articles#index"

  resources :articles do
    resources :comments
  end
  # resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
