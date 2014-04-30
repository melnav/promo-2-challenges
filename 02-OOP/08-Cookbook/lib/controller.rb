require_relative 'cookbook'

class Controller
  def initialize(file)
    @cookbook = Cookbook.new(file)

    # Here you should instantiate the Cookbook model with the file
  end


  # TODO: Implement the methods to retrieve, add, and delete recipes through the model

  def list
    @cookbook.contents
  end

  def add(name_recipe)
    @cookbook.add_recipe(name_recipe)
  end

  def delete(choice)
    @cookbook.delete_one_recipe(choice)
  end

end

