# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)ß

10.times do |num|
Listing.create(
  title: "Listing #{num}",
  subject: "Subject #{num}",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel feugiat lorem, et placerat diam.",
  user_id: 1
)

end

puts "10 listings created"
