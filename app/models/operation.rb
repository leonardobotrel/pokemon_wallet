class Operation < ApplicationRecord
  validates :pokemon_name, presence: true
  validates :pokemon_base_experience, presence: true
  validates :operation, 
          length: {maximum: 1},
          presence: true

  #Kaminari
  paginates_per 10
end
