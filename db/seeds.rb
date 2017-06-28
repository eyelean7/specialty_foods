Story.destroy_all

10.times do |index|
  Story.create(title: Faker::Book.unique.title)
end
