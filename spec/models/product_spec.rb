require 'rails_helper'

RSpec.describe Product, type: :model do
  before do 
    @p1 = Product.create(name: "b")
    @p2 = Product.create(name: "c")
    @p3 = Product.create(name: "a")
  end

  describe ".alphabetical" do 
    it "product is sorted by alphabetical" do
        sortedProducts = Product.alphabetical
        expect(sortedProducts).to eq [@p3, @p1, @p2]
    end

  end
end
