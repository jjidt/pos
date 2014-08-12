require 'spec_helper'

describe 'Product' do
  it 'creates a new product in the database' do
    test_product = Product.create(:name => 'hockey mask', :price => 10.44)
    expect(Product.all.first.price).to eq 10.44
  end
end
