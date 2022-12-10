User.destroy_all
Aircraft.destroy_all
Booking.destroy_all

userDemo = User.create!(
  first_name: "Demo",
  last_name: "User",
  email: "demo@gmail.com",
  password: "123456"
)

puts "Creating Hot Air Balloon for Demo"
hot_air_balloon = Aircraft.create!(
  title: "Spacious Hot Air Balloon Day Trip, Fully Piloted",
  description: "Spend a comfy day up in the sky with up to 7 other friends or colleagues. Our pilot Jack is a magician comedian on the side
  and he is a riot.",
  aircraft_type: "Hot Air Balloon",
  price_per_day: 1200,
  max_occupants: 8,
  departure_address: "41 Stewart St, Melbourne c/o Inspire9, Level1, Richmond VIC 3121",
  arrival_address: "16 Vla Gaudelet, 75011 Paris, France",
  user_id: userDemo.id
)

hot_air_aircraft_images = [
  "https://res.cloudinary.com/adrenalinecomau/image/upload/q_auto,f_auto/v1621578916/adventures/eps_13899.jpg",
  "https://cdn.britannica.com/84/158184-050-1D7ADEB5/balloon.jpg",
  "https://www.floatingimages.com.au/wp-content/uploads/2019/04/IMG_3433-low-res.jpg"
]
puts "Adding Hot Air Balloon Images"

a = URI.open(hot_air_aircraft_images[0])
hot_air_balloon.photos.attach(io: a, filename: "a1.jpg", content_type: "image/jpg")
hot_air_balloon.save

a = URI.open(hot_air_aircraft_images[1])
hot_air_balloon.photos.attach(io: a, filename: "a1.jpg", content_type: "image/jpg")
hot_air_balloon.save

a = URI.open(hot_air_aircraft_images[2])
hot_air_balloon.photos.attach(io: a, filename: "a1.jpg", content_type: "image/jpg")
hot_air_balloon.save

puts "Adding Reviews to Hot Air Balloon"

Review.create!(
  aircraft_id: hot_air_balloon,
  content: "I took my work team on one of these for a teambuilding activity and it was really fun and wholesome
  experience. Jack was a great 'pilot' too - very funny and unobtrusive!"
)

Review.create!(
  aircraft_id: hot_air_balloon,
  content: "Great ride - the basket was more spacious than expected and the views are incredible"
)

Review.create!(
  aircraft_id: hot_air_balloon,
  content: "For the price hard to beat this experience if you can get a full basket!"
)
