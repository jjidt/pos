require 'spec_helper'

describe 'Product' do
  it 'creates a new product in the database' do
    test_product = Product.create(:name => 'hockey mask', :price => 10.44)
    expect(Product.all.first.price).to eq 10.44
  end

  it 'lets you read the product name' do
    test_product = Product.create(:name => 'tooth necklace', :price => 99.99)
    expect(Product.where(:price => 99.99).first.name).to eq 'tooth necklace'
  end
end
