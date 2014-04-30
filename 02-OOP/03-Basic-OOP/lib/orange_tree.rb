class OrangeTree
  attr_reader :size, :age, :fruits, :life

  def initialize
    @size = 0
    @age = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes
    unless @dead
      @age += 1
      grow_up
      produces_fruits
      may_die
    end
  end

  def pick_a_fruit
    if @fruits > 0
      @fruits -= 1
    end
  end

  def dead?
    #!@alive #opposé du boulean
    @dead
  end

  private
    def grow_up
      if @age <= 10
        @size += 1
      end
      #if @age.between?(0, 10)
        #@size += 1
    end

    def produces_fruits
    #de 5 à 9 = 100 par an
    # de 10 à 15 = 200 par an
    # de 15 a apres = rien
      if @age.between?(6, 10)
        @fruits = 100
      elsif @age.between?(11, 15)
        @fruit = 200
      else
        @fruit = 0
      end
    end

    def may_die
      if @age == 100
        @dead = true
      elsif @age >= 50
        if rand(6)+1 == 6
          @dead = true
        end
      end
    end
end






my_tree = OrangeTree.new
p "#{my_tree.age} years old, #{my_tree.size} meters"

p my_tree.one_year_passes

10.times { my_tree.one_year_passes }
p "#{my_tree.age} years old, #{my_tree.size} meters et produit#{my_tree.fruits} orange et il est #{@life}"

my_tree.pick_a_fruit
p "#{my_tree.fruits}"

#my_tree.isdead?
#p "#{my_tree.life}"

  # production orange :


  # def pour prendre un fruit

  # def pour compter les fruits pris

  ########################################correction############################


