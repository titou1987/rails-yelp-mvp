# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0148776534', category: 'chinese'}
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0148786534', category:'italian'}
dishoom2 = { name: 'Dishoom2', address: '7 Boundary St, London E2 7JE', phone_number: '0148773534', category: 'japanese'}
pizza_east2 = { name: 'Pizza East2', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0142776534', category:'chinese'}
pizza_east3 = { name: 'Pizza East3', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0142876534', category:'italian'}


[dishoom, pizza_east, dishoom2, pizza_east2, pizza_east3].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
