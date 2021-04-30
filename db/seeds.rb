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

# puts "Creating Timeslots ..."
# timeslot_1 = {day:"lundi", afternoon_start_hour: "18:30", afternoon_end_hour: "20:00"}

# timeslot_2 = {day:"mardi",
#               morning_start_hour: "12:00",
#               morning_end_hour: "14:00",
#               afternoon_start_hour: "18:30",
#               afternoon_end_hour: "20:00"}

# timeslot_3 = {day:"mercredi",
#               morning_start_hour: "12:00",
#               morning_end_hour: "14:00",
#               afternoon_start_hour: "18:30",
#               afternoon_end_hour: "20:00"}

# timeslot_4 = {day:"jeudi",
#               morning_start_hour: "12:00",
#               morning_end_hour: "14:00",
#               afternoon_start_hour: "18:30",
#               afternoon_end_hour: "20:00"}

# timeslot_5 = {day:"vendredi",
#               morning_start_hour: "12:00",
#               morning_end_hour: "14:00",
#               afternoon_start_hour: "18:30",
#               afternoon_end_hour: "20:00"}

# timeslot_6 = {day:"samedi",
#               morning_start_hour: "12:00",
#               morning_end_hour: "14:00",
#               afternoon_start_hour: "18:30",
#               afternoon_end_hour: "20:00"}

# timeslot_7 = {day:"dimanche"}

# [timeslot_1,timeslot_2,timeslot_3,timeslot_4,timeslot_5,timeslot_6,timeslot_7].each do |time|
#   timeslot = Timeslot.create!(time)
#   puts "Created #{timeslot.day}"
# end

puts "Finished"
