require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < Minitest::Test

  def setup

    @drink_1 = Drink.new("Fosters", 4, 2.0)
    @drink_2 = Drink.new("Stella", 5, 2.5)
    @drink_3 = Drink.new("Special Brew", 3, 4.0)
    drink_stock = [@drink_1, @drink_2, @drink_3]

    @pub = Pub.new("The Winchester", 100, drink_stock)


  end

  def test_name
    assert_equal("The Winchester",@pub.name)
  end

  def test_till
    assert_equal(100,@pub.till)
  end

  def test_drink_stock
    assert_equal(3 ,@pub.drink_stock.length)
  end

  def test_sell_drink
    @pub.sell_drink("Stella", 5, 18)
    assert_equal(2, @pub.drink_stock.length)
    assert_equal(105, @pub.till)
  end

  def test_customer_can_buy_drink
      assert_equal(true, @pub.customer_can_buy_drink(@drink_1.price, 500, 18))
      assert_equal(false, @pub.customer_can_buy_drink(@drink_1.price, 3, 17))
      assert_equal(false, @pub.customer_can_buy_drink(@drink_1.price, 500, 12))

  end




end
