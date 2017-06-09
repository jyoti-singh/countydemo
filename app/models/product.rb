class Product < ActiveRecord::Base
  validates :name,presence: true,uniqueness: true
  validates :name,:product_type, presence: true
end
