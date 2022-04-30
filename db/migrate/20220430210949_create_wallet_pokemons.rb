class CreateWalletPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :wallet_pokemons do |t|
      t.string :name
      t.integer :base_experience

      t.timestamps
    end
  end
end
