Rails.application.routes.draw do
  root to: "users#index"

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :quits, only: [:edit, :update], shallow: true
  end
end
