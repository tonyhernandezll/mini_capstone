class Product < ApplicationRecord
  validates :price, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numerically: { greater_than: 0 }
end
