Product.destroy_all
Review.destroy_all

10.times do |index|
  Product.create(title: Faker::Book.unique.title)
end
