Rails.application.routes.draw do
  root to: "follows#index"

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :quits, only: [:new, :create, :edit, :update], shallow: true
  end

  resources :follows, only: [:create, :destroy]
end
