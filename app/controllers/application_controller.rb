class ApplicationController < ActionController::Base
  before_action :wallet_values

  private

  def wallet_values
    set_price_service()

    @wallet_value = @price.USD_price(WalletPokemon.sum(:base_experience)).round(4)
    @investment = Operation.where(operation: 'c').sum(:usd_price).round(4)
    @sales = Operation.where(operation: 'v').sum(:usd_price).round(4)
    @earned = (@wallet_value - @investment + @sales).round(4)
  end

  def set_price_service
    @price = Price.new
  end
end
