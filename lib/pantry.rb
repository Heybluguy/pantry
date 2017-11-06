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
      if stock[ingredient]
        stock[ingredient] += quantity
      else
        stock[ingredient] = quantity
      end
    end
  end

end
