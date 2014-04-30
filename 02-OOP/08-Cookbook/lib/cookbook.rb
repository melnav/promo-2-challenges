require 'csv'
require 'recipe'

class Cookbook

  attr_reader :contents

  def initialize(file)
     load_csv(file)
     @file = file

    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  end

  def load_csv(file)
    @contents = Recipe.new(title, descriptif, ingredients)
    CSV.foreach(file) do |row|
      @contents << row
    end
  end



  def add_recipe(name_recipe)
    #@cookbook.create(recipe)
    @contents << name_recipe
    CSV.open(@file, "a") do |csv| #a = append/ajouter à la fin
      csv << [name_recipe]
    end
  end

  def delete_one_recipe(choice)
    #if choice - 1 < @contents.length
     @contents.delete_at(choice - 1)
      CSV.open(@file, "w") do |csv|
        @contents.each do |element|
          csv << [element]
        end
      end

  end




  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end

#mycookbook = Cookbook.new('lib/recipes.csv')
#
#mycookbook.add_recipe('Boeuf carottes')
#mycookbook.delete_one_recipe(2)

# montitre;madescription;mesingredients

# Quand on load le CSV
# Pour chaque row on va utiliser les colonnes pour instancier un nouvel objet recette

