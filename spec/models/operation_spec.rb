require 'rails_helper'

RSpec.describe Operation, type: :model do
  describe "validations" do
    it { should validate_presence_of(:pokemon_base_experience) }
    it { should validate_presence_of(:pokemon_base_experience) }
    it { should validate_presence_of(:operation) }
  end
end
