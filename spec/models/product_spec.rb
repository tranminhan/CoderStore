require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @b = Product.create(name: "b")
    @a = Product.create(name: "a")
    @c = Product.create(name: "c")
  end

  it "Sort by alphabetical" do
    products = Product.alphabetical
    expect(products).not_to be_empty
    expect(products).to eq([@a, @b, @c])
  end

end
