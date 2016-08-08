Rails.application.routes.draw do
  # resources :assists
  # resources :infractions
  resources :goalies
  resources :penalties
  resources :goals
  resources :games
  resources :players
  resources :teams do
    resources :players
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
