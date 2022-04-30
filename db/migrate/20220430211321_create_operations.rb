class CreateOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations do |t|
      t.string :operation
      t.string :pokemon_name
      t.integer :pokemon_base_experience

      t.timestamps
    end
  end
end
