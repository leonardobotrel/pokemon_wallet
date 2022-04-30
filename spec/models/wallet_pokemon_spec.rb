require 'rails_helper'

RSpec.describe WalletPokemon, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:base_experience) }
  end
end
