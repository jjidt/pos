class Sale < ActiveRecord::Base
  has_one :cashier
  has_many :carts
  has_many :products, through: :carts
end
