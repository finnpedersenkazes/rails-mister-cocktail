class CreateCocktailIngredientRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktail_ingredient_relations do |t|
      t.string :description
      t.references :cocktail, foreign_key: true, index: true
      t.references :ingredient, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
