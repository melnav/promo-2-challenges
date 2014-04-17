class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
attr_accessor
attr_reader

  def intitialized(size, age, fruits)
    @size = 0
    @age = 0
    @fruits = 0

  end

  # def pour mesurer l'arbre qui grandit 1 mettre par an jusqu'a 10 puis ne grandit plus
  def size_of_tree
    until age <= 10
    @size = (age * 1)
    end
  end

  end

tree = OrangeTree.new(2)
puts tree.size_of_tree

  # production orange :
  #de 0 à 4 = 0
  #de 5 à 9 = 100 par an
  # de 10 à 15 = 200 par an
  # de 15 a apres = rien

  # def pour prendre un fruit

  # def pour compter les fruits pris







end
