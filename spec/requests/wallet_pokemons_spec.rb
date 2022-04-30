require 'rails_helper'

RSpec.describe "WalletPokemons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/wallet_pokemons/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/wallet_pokemons/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
