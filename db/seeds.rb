# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all

puts "Puts ingredient in the DB..."
ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)["drinks"].map { |ingredient| ingredient["strIngredient1"] }
ingredients.each { |ingredient| Ingredient.create!(name: ingredient) }
puts "...end"

puts "Create cocktail..."
cocktail = Cocktail.new(name: "Ti punch")
cocktail.save
puts "...Cocktail created"

puts "Create doses..."
sugar = Ingredient.find(25)
Dose.create!(description: "1 ml", ingredient: sugar, cocktail: cocktail)
rum = Ingredient.find(40)
Dose.create!(description: "4 ml", cocktail: cocktail, ingredient: rum)
lime = Ingredient.find(56)
Dose.create!(description: "1 quarter", cocktail: cocktail, ingredient: lime)
puts "...Doses created"