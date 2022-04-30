Rails.application.routes.draw do
  root "pokemons#index"

  get "/pokemons", to: "pokemons#index"
  resources :wallet_pokemons, only: [:index, :create, :destroy]
  resources :operations, only: [:index, :create]
end
