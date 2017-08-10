# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cocktail.destroy_all


martini = Cocktail.create(name: "Martini")
breakfast_martini = Cocktail.create(name: "Breakfast martini")

ingredient1 = Ingredient.create(name: "Gin")
ingredient2 = Ingredient.create(name: "Vermouth")
ingredient3 = Ingredient.create(name: "Olive")
ingredient4 = Ingredient.create(name: "Cointreau")
ingredient5 = Ingredient.create(name: "Fresh lemon juice")
ingredient6 = Ingredient.create(name: "Orange marmalade")

cocktail_ingredient_relation1 = CocktailIngredientRelation.create(
  description: "6 cl",
  cocktail: martini,
  ingredient: ingredient1
  )
cocktail_ingredient_relation2 = CocktailIngredientRelation.create(
  description: "1 cl",
  cocktail: martini,
  ingredient: ingredient2
  )
cocktail_ingredient_relation3 = CocktailIngredientRelation.create(
  description: "3 as garnish",
  cocktail: martini,
  ingredient: ingredient3
  )

cocktail_ingredient_relation1 = CocktailIngredientRelation.create(
  description: "2 shots",
  cocktail: breakfast_martini,
  ingredient: ingredient1
  )
cocktail_ingredient_relation1 = CocktailIngredientRelation.create(
  description: "3/4 shot",
  cocktail: breakfast_martini,
  ingredient: ingredient4
  )
cocktail_ingredient_relation1 = CocktailIngredientRelation.create(
  description: "3/4 shot",
  cocktail: breakfast_martini,
  ingredient: ingredient5
  )
cocktail_ingredient_relation1 = CocktailIngredientRelation.create(
  description: "1 spoon",
  cocktail: breakfast_martini,
  ingredient: ingredient6
  )

