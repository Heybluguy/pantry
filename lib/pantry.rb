require 'pry'
class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
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

end
