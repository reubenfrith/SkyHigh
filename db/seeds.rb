puts "Cleaning database..."

User.destroy_all
Aircraft.destroy_all
Booking.destroy_all

puts "Creating 10 users..."

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

user7 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

user8 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

user9 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

user10 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
)

puts "Creating some extra users..."

5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

puts "Creating aircraft with their owners..."

aircraft_type = [
  "Hot Air Balloon", "Boeing 747","Fighter jet", "Blimp",
  "Glider", "Parachute", "Fixed Wing Aeroplane", "Helicopter", "Spaceship",
  "Apache Helicopter", "Rocket Ship", "Plane", "Airplane", "Aeroplane", "Taipan Helicopter",
  "Propeller Aircraft", "Boeing B-29 Superfortress", "North American P-51 Mustang", "	Zeppelin interceptor",
  "F/A-18A Hornet", "KC-130J Super Hercules", "AV-8B/+ Harrier II"
]

title = [
  "The most adventure you've ever had", "Feel like a bird", "Fly high and enjoy the sky",
  "Fly high and get high", "Don't be a punk come and fly", "Be maverick for a day",
  "Do cool stuff in the sky", "Don't be afraid of heights", "Sick of being on the ground?",
  "Who says you can't fly and not die", "Sight seeing up high", "Flying tours that will bring you joy",
  "Up high with a smile", "Come fly you lil' B****", "Sissy? You still afraid of heights"
]

description = [
"Whether it's for building hours, going on a trip, doing your IFR cheaply, or making YouTube content - this is the best value for money platform.",
"The popular Cessna 152 is one of our primary training aircraft and ideal for ab-initio training. Under the hood, this aircraft hosts a 110HP engine, capable of 95 knots. It is a true, tried and tested model of airplane that has withstood time and time again as an excellent training aircraft.",
"The Piper Cherokee is one of our primary training aircraft available for ab-initio and advanced training. Under the hood, this aircraft hosts a 160HP engine, capable of 105 knots. ",
"Enjoy an exclusive scenic flight, departing from our luxurious Moorabbin Airport heliport. See the famous beaches, ever-evolving skyline, and spectacular surrounds of beautiful Bayside. This amazing experience is perfect for special occasions of any kind.",
"No airport - no problem! Hiring a private helicopter enables you to land almost anywhere that your pilot deems to be safe, whether that is on the roof of a hotel or conference centre or out on a station in regional Australia. Helicopter hire has become more and more affordable. You might just be pleasantly surprised by the helicopter rental cost.",
"Helicopter services are also highly flexible allowing you to skip traffic and commute at over 200 km/h to land at major airports, regional airstrips, wineries and other locations, subject to landing and safety approvals.",
"Need to get somewhere in a hurry? Keen to avoid airport queues and long check-ins? Private jet charter is the only mode of air travel that allows you to meet every business and leisure travel eventuality. Private jet hire is easier than you think.",
"Private jet charter is the only way to fully travel on your terms. Whether it's accessing a remote destination or taking back control of productivity and flight scheduling, the popularity of private jet hire is exploding in both the business and leisure spaces. This is what you need to know about chartering a private jet.",
"Successful companies and individuals choose to travel by private airplane for a whole host of reasons. While most are familiar with the time-saving convenience, flexibility and premium experience of flying in luxury private jets, private jet hire also enables executives, senior management and key personnel to fulfil strict schedules and attend a number of meetings in different cities, or carry out several site visits in a single day.",
"Private jet hire for leisure purposes allows yourself, your family and friends to travel in luxury, comfort and privacy. It’s fast gaining in popularity as leisure time becomes increasingly precious and we value the experience of the journey almost as much as the destination."
]

aircraft1 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(2..20),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user1.id
)

aircraft2 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user2.id
)

aircraft3 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user3.id
)

aircraft4 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user4.id
)

aircraft5 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user5.id
)

aircraft6 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user6.id
)

aircraft7 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user7.id
)

aircraft8 = Aircraft.create!(
  title: title.sample,
  description: description.sample,
  aircraft_type: aircraft_type.sample,
  price_per_day: rand(150..2000),
  max_occupants: rand(4..30),
  departure_address: Faker::Address.city,
  arrival_address: Faker::Address.city,
  user_id: user8.id
)

puts "Creating some bookings..."

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user3.id,
  aircraft_id: aircraft4.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user4.id,
  aircraft_id: aircraft3.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user3.id,
  aircraft_id: aircraft5.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user5.id,
  aircraft_id: aircraft6.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user7.id,
  aircraft_id: aircraft6.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user10.id,
  aircraft_id: aircraft7.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user9.id,
  aircraft_id: aircraft8.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user5.id,
  aircraft_id: aircraft3.id
)

Booking.create!(
  start_date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now - 1),
  end_date: Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 10),
  total_price: rand(150..2000)*rand(1..10),
  user_id: user6.id,
  aircraft_id: aircraft1.id
)

puts "Handling photos..."

require "open-uri"

aircraft_images = [
  "https://contentzone.eurocontrol.int/aircraftperformance/images/acft_images_large/0994587-A.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/5/57/B-727_Iberia_%28cropped%29.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/US_Navy_071203-N-8923M-074_An_F-A-18F_Super_Hornet%2C_from_the_Red_Rippers_of_Strike_Fighter_Squadron_%28VFA%29_11%2C_makes_a_sharp_turn_above_the_flight_deck_aboard_the_Nimitz-class_nuclear-powered_aircraft_carrier_USS_Harry_S._Truman.jpg/800px-thumbnail.jpg",
  "https://res.cloudinary.com/adrenalinecomau/image/upload/q_auto,f_auto/v1621578916/adventures/eps_13899.jpg",
  "https://global.honda/content/dam/site/global/newsroom/cq_img/news/2022/02/c220224eng_01.jpg",
  "https://images.pexels.com/photos/76971/fighter-jet-fighter-aircraft-f-16-falcon-aircraft-76971.jpeg?cs=srgb&dl=pexels-pixabay-76971.jpg&fm=jpg",
  "https://static.wixstatic.com/media/945de1_483631d3e6b14fe1b0ff33db3aee4c63~mv2.jpg/v1/fill/w_640,h_310,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/945de1_483631d3e6b14fe1b0ff33db3aee4c63~mv2.jpg",
  "https://mediaassets.airbus.com/permalinks/533356/wpr/ascent-helicopters-has-a-growing-fleet-of-h125s.jpg",
  "https://m.media-amazon.com/images/I/71t33YmuRqL.jpg",
  "https://atlas-lta.com/wp-content/uploads/2020/08/dirigibles_vs_blimps-810x560.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Zeppellin_NT_amk.JPG/800px-Zeppellin_NT_amk.JPG"
]

puts "Deleting all photos associated with the aircraft..."

aircraft1.photos.purge
aircraft2.photos.purge
aircraft3.photos.purge
aircraft4.photos.purge
aircraft5.photos.purge
aircraft6.photos.purge
aircraft7.photos.purge
aircraft8.photos.purge

puts "Adding photos to the aircraft..."

2.times do
  a = URI.open(aircraft_images.sample)
  aircraft1.photos.attach(io: a, filename: "a1.jpg", content_type: "image/jpg")
  aircraft1.save
end

3.times do
  a = URI.open(aircraft_images.sample)
  aircraft2.photos.attach(io: a, filename: "a2.jpg", content_type: "image/jpg")
  aircraft2.save
end

2.times do
  a = URI.open(aircraft_images.sample)
  aircraft3.photos.attach(io: a, filename: "a3.jpg", content_type: "image/jpg")
  aircraft3.save
end

a = URI.open(aircraft_images.sample)
aircraft4.photos.attach(io: a, filename: "a4.jpg", content_type: "image/jpg")
aircraft4.save

a = URI.open(aircraft_images.sample)
aircraft5.photos.attach(io: a, filename: "a5.jpg", content_type: "image/jpg")
aircraft5.save

a = URI.open(aircraft_images.sample)
aircraft6.photos.attach(io: a, filename: "a6.jpg", content_type: "image/jpg")
aircraft6.save

2.times do
  a = URI.open(aircraft_images.sample)
  aircraft7.photos.attach(io: a, filename: "a7.jpg", content_type: "image/jpg")
  aircraft7.save
end

3.times do
  a = URI.open(aircraft_images.sample)
  aircraft8.photos.attach(io: a, filename: "a8.jpg", content_type: "image/jpg")
  aircraft8.save
end

puts "Finished!"
