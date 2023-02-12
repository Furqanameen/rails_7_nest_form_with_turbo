# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


100.times do
	price = Faker::Commerce.price
	product_name = Faker::Commerce.product_name
	description = Faker::Lorem.paragraph(sentence_count: 2)
	# image_url = Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports', 'fitness'], match_all: true)
	product = Product.create(price: price, description: description, title: product_name)
	if product.save 
		puts "product created: #{product.id}"
	else
		puts "error #{product.errors}"
	end
end
