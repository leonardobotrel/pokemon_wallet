class WalletPokemonsController < ApplicationController
  def index
  end

  def create
    # indicator = Indicator.new(permitted)
    # if indicator.save
    #   render json: indicator.to_json( :include => [:measure_unit, :periodicity] ), status: :created
    # else
    #   head :internal_server_error
    # end
  end

  def destroy
  end
end
