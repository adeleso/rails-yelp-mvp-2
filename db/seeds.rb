require 'faker'

Restaurant.destroy_all

10.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    telephone: Faker::Number.leading_zero_number(10),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  3.times do
    comments = ["good","I love their desserts", "could be cleaner", "awesome", "awful", "not that bad", "waiter was very polite", "bread was frozen", "ideal for groups and families"]
    Review.create!(
      content: comments.sample,
      rating: rand(1..5),
      restaurant_id: resto.id
    )
  end
end
