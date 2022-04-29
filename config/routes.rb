Rails.application.routes.draw do
  root "pokemons#index"

  get "/pokemons", to: "pokemons#index"
end
