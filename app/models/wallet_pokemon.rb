class WalletPokemon < ApplicationRecord
  validates :name, presence: true
  validates :base_experience, presence: true
  
  after_create :operation_create
  before_destroy :operation_destroy

  #Kaminari
  paginates_per 10

  private

  def USD_price
    set_price_service()
    base_experience_value = self.base_experience * 0.00000001
    @USD_price = @price.USD_price(base_experience_value)
  end

  def operation_create
    USD_price()
    Operation.create(
      operation: 'c', 
      pokemon_name: self.name, 
      pokemon_base_experience: self.base_experience,
      usd_price: @USD_price
    )
  end

  def operation_destroy
    USD_price()
    Operation.create(
      operation: 'v', 
      pokemon_name: self.name, 
      pokemon_base_experience: self.base_experience,
      usd_price: @USD_price
    )
  end

  def set_price_service
    @price = Price.new
  end
end
