Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  namespace :admin do
    resources :dashboard, only: [:index]
  end
end
