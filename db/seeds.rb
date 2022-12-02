# puts "Cleaning database..."

# User.destroy_all
# Aircraft.destroy_all
# Booking.destroy_all

# puts "Creating 10 users..."

user1 = User.create!(
  first_name: "John",
  last_name: "Doe",
  email: "john@gmail.com",
  password: "123456"
)

user2 = User.create!(
  first_name: "Jane",
  last_name: "Doe",
  email: "jane@gmail.com",
  password: "123456"
)

user3 = User.create!(
  first_name: "Dimitri",
  last_name: "M",
  email: "dimitri@gmail.com",
  password: "123456"
)

user4 = User.create!(
  first_name: "Zhenni",
  last_name: "Z",
  email: "zhenni@gmail.com",
  password: "123456"
)

user5 = User.create!(
  first_name: "Adam",
  last_name: "D",
  email: "adam@gmail.com",
  password: "123456"
)

user6 = User.create!(
  first_name: "Reuben",
  last_name: "R",
  email: "reuben@gmail.com",
  password: "123456"
)

# user7 = User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   password: Faker::Internet.password
# )

# user8 = User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   password: Faker::Internet.password
# )

# user9 = User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   password: Faker::Internet.password
# )

# user10 = User.create!(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   password: Faker::Internet.password
# )

# puts "Creating some extra users..."

# 5.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
# end

# puts "Creating aircraft with their owners..."

# aircraft_type = [
#   "Hot Air Balloon", "Boeing 747","Fighter jet", "Blimp",
#   "Glider", "Parachute", "Fixed Wing Aeroplane", "Helicopter", "Spaceship",
#   "Apache Helicopter", "Rocket Ship", "Plane", "Airplane", "Aeroplane", "Taipan Helicopter",
#   "Propeller Aircraft", "Boeing B-29 Superfortress", "North American P-51 Mustang", "	Zeppelin interceptor",
#   "F/A-18A Hornet", "KC-130J Super Hercules", "AV-8B/+ Harrier II"
# ]

# title = [
#   "The most adventure you've ever had", "Feel like a bird", "Fly high and enjoy the sky",
#   "Fly high and get high", "Don't be a punk come and fly", "Be maverick for a day",
#   "Do cool stuff in the sky", "Don't be afraid of heights", "Sick of being on the ground?",
#   "Who says you can't fly and not die", "Sight seeing up high", "Flying tours that will bring you joy",
#   "Up high with a smile", "Come fly you lil' B****", "Sissy? You still afraid of heights"
# ]

# 3.times do
#   Aircraft.create!(
#     title: title.sample,
#     description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#     aircraft_type: aircraft_type.sample,
#     price_per_day: rand(150..2000),
#     max_occupants: rand(2..20),
#     departure_address: Faker::Address.full_address,
#     arrival_address: Faker::Address.full_address,
#     user_id: user1.id
#   )
# end

# 3.times do
#   Aircraft.create!(
#     title: title.sample,
#     description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#     aircraft_type: aircraft_type.sample,
#     price_per_day: rand(150..2000),
#     max_occupants: rand(4..30),
#     departure_address: Faker::Address.full_address,
#     arrival_address: Faker::Address.full_address,
#     user_id: user2.id
#   )
# end

# aircraft3 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user3.id
# )

# aircraft4 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user4.id
# )

# aircraft5 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user5.id
# )

# aircraft6 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user6.id
# )

# aircraft7 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user7.id
# )

# aircraft8 = Aircraft.create!(
#   title: title.sample,
#   description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#   aircraft_type: aircraft_type.sample,
#   price_per_day: rand(150..2000),
#   max_occupants: rand(4..30),
#   departure_address: Faker::Address.full_address,
#   arrival_address: Faker::Address.full_address,
#   user_id: user8.id
# )

# puts "Creating some bookings..."

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user3.id,
#   aircraft_id: aircraft4.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user4.id,
#   aircraft_id: aircraft3.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user3.id,
#   aircraft_id: aircraft5.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user5.id,
#   aircraft_id: aircraft6.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user7.id,
#   aircraft_id: aircraft6.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user10.id,
#   aircraft_id: aircraft7.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user9.id,
#   aircraft_id: aircraft8.id
# )

# Booking.create!(
#   start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
#   end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
#   total_price: rand(150..2000)*rand(1..10),
#   user_id: user5.id,
#   aircraft_id: aircraft3.id
# )

# puts "Finished!"
