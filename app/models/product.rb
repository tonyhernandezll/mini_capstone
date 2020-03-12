class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  # validates :price, numerically: { greater_than: 0 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
