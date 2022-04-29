class Pokemon
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2'

  def initialize
    @options = {}
  end

  def list
    self.class.get("/", @options)
  end
end