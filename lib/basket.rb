class Basket
  PRICES = {
    apple: 60,
    orange: 25
  }

  def initialize
    @contents = []
  end

  def total
    @contents.map{|item| PRICES[item]}.reduce(0, :+)
  end

  def add item
    @contents << item
  end
end
