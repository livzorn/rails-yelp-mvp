# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  # content = Faker::Quote.most_interesting_man_in_the_world
  # rating = rand(0..5)
  # review = Review.create(content: content, rating: rating)
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  categories = %w(chinese italian japanese french belgian)
  Restaurant.create(name: name, address: address, category: categories.sample)
end
