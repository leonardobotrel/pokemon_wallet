require 'rails_helper'

RSpec.describe Operation, type: :model do
  describe "validations" do
    it { should validate_presence_of(:pokemon_name) }
    it { should validate_presence_of(:pokemon_base_experience) }
    it { should validate_presence_of(:operation) }
    it { should validate_presence_of(:usd_price) }
  end
end
