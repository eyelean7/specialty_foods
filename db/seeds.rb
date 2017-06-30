Product.destroy_all
Review.destroy_all

10.times do |index|
  Product.create(name: Faker::Food.unique.ingredient, cost: [2.00, 4.50, 6.00, 8.50, 10.00].sample, country_of_origin: Faker::Address.country)
end
