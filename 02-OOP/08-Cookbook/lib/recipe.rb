class Recipe

  attr_reader :name, :ingredients, :descriptif

  def initialize(name, descriptif, ingredients)
    @name = name
    @descriptif = descriptif
    @ingrqedients = ingredients
  end
#methode to_s
end
