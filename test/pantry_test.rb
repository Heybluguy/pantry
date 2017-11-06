require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  attr_reader :pantry

  def setup
    @pantry = Pantry.new
  end

  def test_it_exists
    assert_instance_of Pantry, pantry
  end

  def test_it_has_a_stock
    assert_instance_of Hash, pantry.stock
  end

  def test_can_check_items
    assert_equal 0, pantry.stock_check("Cheese")

  end

  def test_can_stock_and_check_items
    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
  end
end
