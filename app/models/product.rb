class Product < ApplicationRecord
  validates :name, :cost, :country_of_origin, :presence => true
  has_many :reviews

  scope :most_popular, -> {
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group('products.id')
    .order('reviews_count DESC')
    .limit(3)
  }

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :domestic, -> { where("country_of_origin like ?", "United States%")}
end
