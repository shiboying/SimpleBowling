Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :players, only: [:new, :create]

  resources :games, only: [:index, :new, :create]
end
