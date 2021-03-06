class WalletPokemonsController < ApplicationController
  def index
    @wallet_pokemons = WalletPokemon.all.page(params[:page])
  end

  def create
    @wallet_pokemon = WalletPokemon.new(wallet_pokemon_params)

    if @wallet_pokemon.save
      redirect_to pokemons_path, notice: "Pokémon adquirido com sucesso!"
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @wallet_pokemon = WalletPokemon.find(params[:id])

    if @wallet_pokemon.destroy
      redirect_to wallet_pokemons_path, notice: "Pokémon vendido com sucesso!"
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def wallet_pokemon_params
    params.permit(:name, :base_experience)
  end
end
