class CocktailIngredientRelation < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :cocktail, :reject_if => :all_blank
  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank
end
