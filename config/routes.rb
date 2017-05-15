Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    namespace :admin do
      resources :users
      root to: "users#index"
      resources :positions
      root to: "positions#index"
    end
    get 'subscriptions', to: 'subscriptions#index'

    get 'directory', to: 'directory#index'

    root to: 'directory#index', as: :authenticated_root
  end
  get 'discourse/sso', to: 'discourse_sso#sso'
  root to: redirect('/users/sign_in')
end
