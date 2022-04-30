class WalletPokemon < ApplicationRecord
  validates :name, presence: true
  validates :base_experience, presence: true
  
  after_create :add_operation

  private

  def add_operation

  end
end
