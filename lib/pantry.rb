class Pantry
  attr_reader :stock
  def initialize
    @stock = {}

  end

  def stock_check(item)
     variable = stock[item]
     0 if variable == nil
  end


end
