require 'pry'
class Pantry
  attr_reader :stock,
              :shopping_list,
              :cookbook

  def initialize
    @stock = {}
    @shopping_list = {}
    @cookbook = []
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
    list = ""
    @shopping_list.each {|ingredient, quantity| list << "* #{ingredient}: #{quantity}\n"}
    list.chop
  end

  def add_to_cookbook(recipe)
    @cookbook << recipe
  end

  def what_can_i_make?
    
    @cookbook.each do |recipe|
      if @stock.include?(recipe.ingredients)
        recipe.name
      end
    end
  end

end
