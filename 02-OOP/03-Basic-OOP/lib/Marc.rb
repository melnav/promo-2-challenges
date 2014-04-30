class OrangeTree

  attr_accessor :year, :size, :fruit, :life

  def initialize
    @year = 0
    @size = 0
    @fruit = 0
    @life = true
  end

  def one_year_passe
    if @life
      @year += 1
      grow_up
      grow_fruits
      life_cycle
    end
  end

  def grow_up
    if @year <= 10
    @size = @year
    else @year > 10
      @size = 10
    end
  end

  def grow_fruits
    case year
    when 5..10
      fruit = 100
    when 10..15
      fruit = 200
    end
  end

  def pick_a_fruit
    if @fruit > 0
      @fruit -= 1
    end
  end

  def alive?
    @alive
  end

  def life_cycle
    case @year
    when 0..50
      @life = true
    when 50..100
    probability = rand(10)
      if probability <= 4
        @life = false
      else
        @life = true
      end
    else
      @life = false
    end
  end

end

my_tree = OrangeTree.new
p "my tree is #{my_tree.year} year"


10.times { my_tree.one_year_passe }
p "#{my_tree.year} years old, #{my_tree.grow_up} meters et produit #{my_tree.grow_fruits}"