class Customer

  attr_reader :name, :wallet, :drunkenness, :age, :drinks

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @drunkenness = 0.0
    @age = age
    @drinks = []
  end

  def get_drink(pub, drink_name, age)
    drink = pub.sell_drink(drink_name, @wallet, age)
    @drinks << drink #if !drink.nil?
    @wallet -= @drinks[0].price
    @drunkenness += @drinks[0].alcohol_level
    @drinks.pop

    # @drunkenness += drink.alcohol_level
  end



end
