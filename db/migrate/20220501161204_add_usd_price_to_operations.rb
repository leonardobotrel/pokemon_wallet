class AddUsdPriceToOperations < ActiveRecord::Migration[7.0]
  def change
    add_column :operations, :usd_price, :float
  end
end
