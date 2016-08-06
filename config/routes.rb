Rails.application.routes.draw do
  resources :infractions
  resources :goalies
  resources :penalties
  resources :goals
  resources :games
  resources :players
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
