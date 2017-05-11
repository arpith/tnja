Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
    resources :positions
    root to: "positions#index"
  end

  devise_for :users

  get 'subscriptions', to: 'subscriptions#index'

  get 'directory/index'

  root 'directory#index'
end
