class Pokemon
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2/pokemon'

  def initialize(offset)
    @options = {  query: {limit: 10, offset: offset } }
  end

  def list
    pokemons = self.class.get("/", @options)

    pokemons["results"].each do |pokemon|
      data = HTTParty.get(pokemon["url"])
      pokemon["base_experience"] = data["base_experience"]
    end

    return pokemons
  end
end