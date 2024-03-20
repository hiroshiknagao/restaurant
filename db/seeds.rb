
puts "cleaning the DB..."
NiceRestaurant.destroy_all

puts  "Creating nice restaurants..."

20.times do
  NiceRestaurant.create!(
    name: Faker::Restaurant.unique.name,
    rating: rand(1..5),
    address: Faker::Address.unique.street_address,
    category: Faker::Food.ethnic_category,
    chef_name: Faker::Name.name,
  )
end
puts "...created #{NiceRestaurant.count} restaurants"
