class Cart < ActiveRecord::Base
  has_many :products
  has_many :sales

  def self.products_by_sale id
    results = Cart.where(:sale_id => id)
    results = results.map do |result|
      result.product_id
    end
      Product.where(:id => results)
  end
end
