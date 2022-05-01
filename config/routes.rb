Rails.application.routes.draw do
  root "pokemons#index"

  resources :pokemons, only: [:index]
  resources :wallet_pokemons, only: [:index, :create, :destroy]
  resources :operations, only: [:index]
end
