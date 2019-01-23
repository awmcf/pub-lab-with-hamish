class Pub

  attr_reader :name, :till, :drink_stock

  def initialize(name, till, drink_stock)
    @name = name
    @till = till
    @drink_stock = drink_stock
  end

  def customer_can_buy_drink(drink_price, customer_balance, customer_age)
    if drink_price <= customer_balance && customer_age >= 18
      return true
    else
      return false
    end
  end

  def sell_drink(drink_name, customer_balance, customer_age)
    for drink in @drink_stock
      if drink.name == drink_name && customer_can_buy_drink(drink.price, customer_balance, customer_age) == true
        @drink_stock.delete(drink)
        @till += drink.price
        return drink
      end
    end
  end

end
