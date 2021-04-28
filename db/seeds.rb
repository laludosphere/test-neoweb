# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database ..."
Restaurant.destroy_all

puts "Creating restaurants ..."
alexens = {name: "Alexens", address: "175 Avenue de Bretagne"}
le_switch = {name: "Le Switch", address: "168 Avenue de Bretagne"}
kok_piraat = {name: "Kok Piraat", address: "Rue Hegel"}

[alexens,le_switch,kok_piraat].each do |resto|
  restaurant = Restaurant.create!(resto)
  puts "Created #{restaurant.name}"
end

puts "Finished"
