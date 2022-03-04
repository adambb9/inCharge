Rails.application.routes.draw do
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  get "/about", to: "pages#about"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :topics, only: [:index] do
    resources :subtopics, only: [:index, :show, :create]
  end

  resources :subtopics, only: [:index, :show, :create] do
    resources :tiles, only: [:index, :destroy]
  end
  resources :tiles, only: :show do
    resources :subscriptions, only: :create
  end

  resources :subscriptions, only: [:index, :destroy, :show]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
