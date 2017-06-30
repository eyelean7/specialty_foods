Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create(name: Faker::Food.unique.ingredient, cost: [2.00, 4.50, 6.00, 8.50, 10.00].sample, country_of_origin: Faker::Address.country)
end

Product.all
250.times do |index|
  Review.create(content_body: Faker::Lorem.sentence(10, false, 0).chop, author: Faker::HarryPotter.character, rating: (1..5).to_a.sample, product_id: Product.all.sample.id)
end


Review.create(content_body: Faker::Lorem.sentence(10, false, 0).chop, author: Faker::HarryPotter.character, rating: (1..5).to_a.sample, product_id: Product.all.sample.id)
