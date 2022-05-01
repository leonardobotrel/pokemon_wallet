class Price
  include HTTParty
  base_uri 'https://api.coinbase.com/v2/prices/spot'

  def initialize
    @options = {  query: {currency: 'USD'} }
  end

  def USD_price(btc_value)
    usd_price = self.class.get("/", @options)
    usd_value = (btc_value * 0.00000001) * usd_price["data"]["amount"].to_f #3 rule to calc usd value

    return usd_value
  end
end