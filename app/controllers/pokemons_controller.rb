class PokemonsController < ApplicationController
  before_action :set_pokemon_service
  def index
    @pokemons = @pokemon_service.list
  end

  private

  def set_pokemon_service
    @pokemon_service = Pokemon.new
  end
end
