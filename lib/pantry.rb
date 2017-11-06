require 'pry'
class Pantry
  attr_reader :stock,
              :shopping_list

  def initialize
    @stock = {}
    @shopping_list = {}
  end

  def stock_check(item)
     quantity = @stock[item]
    if quantity == nil
      quantity = 0
    end
    quantity
  end

  def restock(item, quantity)
    if @stock[item]
       @stock[item] += quantity
     else
       @stock[item] = quantity
    end
    @stock[item]
  end

  def add_to_shopping_list(recipe)
    recipe.ingredients.each do |ingredient, quantity|
      if @shopping_list[ingredient]
        @shopping_list[ingredient] += quantity
      else
        @shopping_list[ingredient] = quantity
      end
    end
  end


  def print_shopping_list
  
  end

end
