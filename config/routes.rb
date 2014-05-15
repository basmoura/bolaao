Rails.application.routes.draw do
  root "games#index"

  resources :games
  resources :users, only: :show
  resources :bet, only: :show

  namespace :api, defaults: { format: 'json' } do
    resources :users, only: [:index, :create]
    resources :bets, only: [:index, :create]
    resources :games, only: [:index]
  end
end
