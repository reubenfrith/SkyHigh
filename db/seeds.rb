# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.destroy_all
# Aircraft.destroy_all
# puts "Cleaning Database"
# puts "Creating Users and their aircrafts"

# 5.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
# end

## Need to manually increment user id to assign an aircraft to a user
# aircraft = Aircraft.create!(
#   title: Faker::Lorem.sentence,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: Faker::Space.launch_vehicle,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.city,
#   arrival_address: Faker::Address.city,
#   user_id: 11
# )
# puts "finished!"

booking = Booking.create!(
  start_date: DateTime.strptime("23/12/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("26/12/2022 11:00", "%d/%m/%Y %H:%M"),
  total_price: (729*3),
  user_id: 8,
  aircraft_id: 6
)
