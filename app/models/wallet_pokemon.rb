class WalletPokemon < ApplicationRecord
  validates :name, presence: true
  validates :base_experience, presence: true
  
  after_create :operation_create
  before_destroy :operation_destroy

  private

  def operation_create
    Operation.create(operation: 'c', pokemon_name: self.name, pokemon_base_experience: self.base_experience)
  end

  def operation_destroy
    Operation.create(operation: 'v', pokemon_name: self.name, pokemon_base_experience: self.base_experience)
  end
end
