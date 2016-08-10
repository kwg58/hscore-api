Rails.application.routes.draw do
root 'welcome#index'

  # get 'welcome/index'

  # root 'games#index'
  # resources :assists
  # resources :infractions
  resources :goalies
  # resources :penalties
  # resources :goals
  resources :games do
    resources :goals
    resources :penalties
  end
  resources :players
  resources :teams do
    resources :players
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
