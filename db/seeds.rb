# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

puts "cleaning database"
# Clean the database
Restaurant.destroy_all
puts "database is clean"

puts "starting seed"
5.times do |restaurant|
  Restaurant.create!(
    name: "Wagamummas",
    address: "London",
    phone_number: "+447515938271",
    category: CATEGORIES[rand(0..4)]
  )
end
puts "ending seed"