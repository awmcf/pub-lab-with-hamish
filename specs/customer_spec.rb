require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestCustomer < Minitest::Test

  def setup
    @drink_1 = Drink.new("Fosters", 4, 2.0)
    @drink_2 = Drink.new("Stella", 5, 2.5)
    @drink_3 = Drink.new("Special Brew", 3, 4.0)
    drink_stock = [@drink_1, @drink_2, @drink_3]

    @pub = Pub.new("The Winchester", 100, drink_stock)

    @customer_1 = Customer.new("Tim", 20, 23)
  end

  def test_name
    assert_equal("Tim",@customer_1.name)
  end

  def test_wallet
    assert_equal(20,@customer_1.wallet)
  end

  def test_age
    assert_equal(23,@customer_1.age)
  end
  #
  # def test_get_drink
  #   @customer_1.get_drink(@drink_1)
  #   assert_equal(1, @customer_1.drink.length)
  # end

  def test_get_drink
    @customer_1.get_drink(@pub, "Stella", @customer_1.age)
    assert_equal(15, @customer_1.wallet)
    assert_equal(2.5, @customer_1.drunkenness)
    assert_equal(2, @pub.drink_stock.length)
  end

end
