Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :topics, only: [:index] do
    resources :subtopics, only: [:index, :show, :create]
  end
  resources :tiles, only: [:index, :show, :destroy]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
