# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

stream = open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(stream)

# p ingredients["drinks"]

ingredients["drinks"].each_with_index do |ingredient, index|
  Ingredient.create(name: ingredient["strIngredient1"])
  #  puts "#{index + 1}. #{ingredient["strIngredient1"]}"
end

Ingredient.create(name: "Agave sirup")
Ingredient.create(name: "Salt")
Ingredient.create(name: "Peach Schnapps")
Ingredient.create(name: "Chambord")
Ingredient.create(name: "Cocktail umbrella")
Ingredient.create(name: "Becherovka liquer")
Ingredient.create(name: "Tonic water")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Soda water")

# Cocktail.create(name: "Mojito", image: "Mojito.jpg", procedure: "(1) Muddle the lime juice, sugar and mint leaves in a small jug, crushing the mint as you go – you can use the end of a rolling pin for this. Pour into a tall glass and add a handful of ice.\n\n(2) Pour over the rum, stirring with a long-handled spoon. Top up with soda water, garnish with mint and lime wheel and serve.")
# Cocktail.create(name: "Margharita", image: "margharita.jpg", procedure: "(1) Add all the ingredients into a shaker with ice, and shake until chilled.\n\n(2) Strain into the prepared rocks glass over fresh ice.\n\n(3) Garnish with a lime wheel and kosher salt (optional).")
# Cocktail.create(name: "Sex on the Beach", image: "sex.jpg", procedure: "(1) Add all the ingredients into a shaker with ice and shake.\n\n(2) Strain into a highball glass over fresh ice.\n\n(3) Garnish with a cocktail umbrella.")
# Cocktail.create(name: "Beton", image: "beton.jpg", procedure: "(1) Add the ingredients into a highball glass over ice.\n\n(2)Garnish with a lemon wedge.")

# # Mojito
# Dose.create(description: "60 ml", cocktail_id: 1, ingredient_id: 1)
# Dose.create(description: "Small handful", cocktail_id: 1, ingredient_id: 108)
# Dose.create(description: "22 ml", cocktail_id: 1, ingredient_id: 29)
# Dose.create(description: "1 tsp", cocktail_id: 1, ingredient_id: 27)
# Dose.create(description: "To top", cocktail_id: 1, ingredient_id: 109)
# Dose.create(description: "1 wheel", cocktail_id: 1, ingredient_id: 55)

# # MArgharita
# Dose.create(description: "60 ml", cocktail_id: 2, ingredient_id: 21 )
# Dose.create(description: "15 ml", cocktail_id: 2, ingredient_id: 11)
# Dose.create(description: "30 ml", cocktail_id: 2, ingredient_id: 29)
# Dose.create(description: "15 ml", cocktail_id: 2, ingredient_id: 101)
# Dose.create(description: "1 wheel", cocktail_id: 2, ingredient_id: 55)
# Dose.create(description: "1 pinch", cocktail_id: 2, ingredient_id: 102)

# # Sex on the Beach
# Dose.create(description: "15 ml", cocktail_id: 3, ingredient_id: 103)
# Dose.create(description: "45 ml", cocktail_id: 3, ingredient_id: 46)
# Dose.create(description: "45 ml", cocktail_id: 3, ingredient_id: 77)
# Dose.create(description: "15 ml", cocktail_id: 3, ingredient_id: 104)
# Dose.create(description: "1 pc.", cocktail_id: 3, ingredient_id: 105)

# # Beton
# Dose.create(description: "60 ml", cocktail_id: 4, ingredient_id: 106)
# Dose.create(description: "120 ml", cocktail_id: 4, ingredient_id: 107)
# Dose.create(description: "1 wedge", cocktail_id: 4, ingredient_id: 82)

