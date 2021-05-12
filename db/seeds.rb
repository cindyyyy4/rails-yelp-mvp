# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Mandarin', address: '7 Boundary St, London E2 7JE', phone_number: '0044 44 44 44', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0044 33 44 44', category: 'italian' }
tour_argent = { name: "La Tour d'Argent", address: '15 Quai de la Tournelle, 75005 Paris', phone_number: '01 43 54 23 31', category: 'french' }
tokyo = { name: 'Le Tokyo', address: '24 avenue Sébastopol, 75010 Paris', phone_number: '01 45 55 23 31', category: 'japanese' }
frite = { name: 'La Frite', address: '15 rue Saint Maur, 75009 Paris', phone_number: '01 46 56 23 31', category: 'belgian' }

[dishoom, pizza_east, tour_argent, tokyo, frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
