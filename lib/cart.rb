class Cart < ActiveRecord::Base
  has_many :products
  has_many :sales

  def self.products_by_sale id
    products = []
    results = Cart.where(:sale_id => id)
    results.each do |result|
      products << result.product_id
    end
      Product.where(:id => products)
  end
end
