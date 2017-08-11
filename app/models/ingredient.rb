class Ingredient < ApplicationRecord
  has_many :cocktail_ingredient_relations, dependent: :destroy
  has_many :cocktails, through: :cocktail_ingredient_relations, :class_name => 'Cocktail'

  has_attachment :photo

  accepts_nested_attributes_for :cocktail_ingredient_relations
  accepts_nested_attributes_for :cocktails
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
