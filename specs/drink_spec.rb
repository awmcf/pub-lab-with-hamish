require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < Minitest::Test

def setup
  @drink_1 = Drink.new("Fosters", 5, 2.0)
end

  def test_drink_name
    assert_equal("Fosters", @drink_1.name)
  end

  def test_drink_price
    assert_equal(5, @drink_1.price)
  end

  def test_drink_alcohol_level
    assert_equal(2.0, @drink_1.alcohol_level)
  end

end
