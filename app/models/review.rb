class Review < ApplicationRecord
  validates :author, :content_body, :rating, :presence => true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :content_body, length: { in: 50..250 }
  belongs_to :product
end
