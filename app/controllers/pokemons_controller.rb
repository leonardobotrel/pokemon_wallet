class PokemonsController < ApplicationController

  def index
    set_pokemon_service(params[:offset].to_i)
    @pokemons = @pokemon_service.list
    @next_offset = @pokemons["next"].split(Regexp.union(['=', '&']))[1].to_i rescue nil
    @previous_offset = @pokemons["previous"].split(Regexp.union(['=', '&']))[1].to_i rescue nil
  end

  private

  def set_pokemon_service(offset = 0)
    @pokemon_service = Pokemon.new(offset)
  end
end
