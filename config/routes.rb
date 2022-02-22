Rails.application.routes.draw do
  root :to => "dishes#index"
  resources :users
  resources :favorites
  resources :neighborhoods
  resources :cuisines
  resources :venues
  resources :dishes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
