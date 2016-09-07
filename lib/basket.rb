class Basket
  PRICES = {
    apple: 60,
    orange: 25
  }

  def initialize
    @contents = []
    @apple_count = 0
    @orange_count = 0
  end

  def total
    total = 0
    @contents.each do |item|
      total += PRICES[item]
    end
    total - PRICES[:apple]*(@apple_count / 2)
    total - PRICES[:orange]*(@orange_count/3)
  end

  def add item
    @contents << item
    @apple_count += 1 if item == :apple
    @orange_count += 1 if item == :orange
  end
end
