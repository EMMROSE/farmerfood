class Product < ApplicationRecord
  belongs_to :category

  monetize :price_cents
  has_one_attached :cover
end
