Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'groups#index'

  
  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :money_tracks, only: [ :new, :show, :create]
  end
end
