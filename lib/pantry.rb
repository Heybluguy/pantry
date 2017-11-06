require 'pry'
class Pantry
  attr_reader :stock
  def initialize
    @stock = {}

  end

  def stock_check(item)
     stock = stock[item]
     0 if stock == nil
  end

  def restock(item, quantity)
    @stoc

  end

end
