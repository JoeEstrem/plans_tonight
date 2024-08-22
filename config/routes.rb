Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show, :index] do
    resources :plans, only: [:index]
  end

  resources :plans, only: [:show, :create, :new, :post] do
    member do
      get 'invitation'
      post 'invite'
    end
  end

  resources :polls, only: [:create, :edit, :show]

  resources :bars, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
