require 'basket'

describe 'Basket' do
  it 'has value of 0 when empty' do
    basket = Basket.new
    expect(basket.total).to eq 0
  end

  context 'no discounts applied' do
    it 'has value of 60 when one apple added' do
      basket = Basket.new
      basket.add(:apple)
      expect(basket.total).to eq 60
    end

    it 'has value of 25 when one orange added' do
      basket = Basket.new
      basket.add(:orange)
      expect(basket.total).to eq 25
    end

    it 'has value of 170 when two apples and two oranges added' do
      basket = Basket.new
      basket.add(:orange)
      basket.add(:orange)
      basket.add(:apple)
      basket.add(:apple)
      expect(basket.total).to eq 170
    end
  end

  context 'simple discounts' do
  
  end
end
