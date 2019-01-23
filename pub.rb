class Pub

  attr_reader :name, :till, :drink_stock

  def initialize(name, till, drink_stock)
    @name = name
    @till = till
    @drink_stock = drink_stock
  end

  def customer_has_enough_for_drink(drink_price, customer_balance)
    if drink_price <= customer_balance
      return true
    else
      return false
    end
  end

  def sell_drink(drink_name, customer_balance)
    for drink in @drink_stock
      if drink.name == drink_name && customer_has_enough_for_drink(drink.price, customer_balance) == true        
        @drink_stock.delete(drink)
        return drink
      end
    end
  end




end
