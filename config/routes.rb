Rails.application.routes.draw do
  get 'office_bearers/index'

  devise_for :users
  authenticate :user do
    namespace :admin do
      resources :users
      root to: "users#index"
      resources :positions
      root to: "positions#index"
      resources :categories
      root to: "categories#index"
      resources :payments
      root to: "payments#index"
    end

    get 'subscriptions', to: 'subscriptions#index'
    get 'office-bearers', to: 'office_bearers#index'

    get 'directory', to: 'directory#index'
    root to: 'directory#index', as: :authenticated_root
  end
  get 'discourse/sso', to: 'discourse_sso#sso'
  root to: redirect('/users/sign_in')
end
