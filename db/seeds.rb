100.times do |i|
  Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
end