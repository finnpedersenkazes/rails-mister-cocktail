class CocktailIngredientRelationsController < ApplicationController
  before_action :set_cocktail_ingredient_relation, only: [:show, :edit, :update, :destroy] 

  def index
    @cocktail_ingredient_relations = CocktailIngredientRelation.all
  end

  def show
  end

  def new
    @cocktail_ingredient_relation = CocktailIngredientRelation.new
    @cocktail_ingredient_relation.cocktail_id = params[:cocktail_id] if params[:cocktail_id]
    @cocktail_ingredient_relation.ingredient_id = params[:ingredient_id] if params[:ingredient_id]
  end

  def edit
  end

  def create
    @cocktail_ingredient_relation = CocktailIngredientRelation.new(cocktail_ingredient_relation_params)
    if @cocktail_ingredient_relation.save
      redirect_to cocktail_ingredient_relations_path
    else
      render :new
    end
  end

  def update
    if @cocktail_ingredient_relation.update(cocktail_ingredient_relation_params)
      redirect_to cocktail_ingredient_relations_path
    else
      render :edit
    end
  end

  def destroy
    @cocktail_ingredient_relation.destroy
    redirect_to cocktail_ingredient_relations_path
  end

  private

  def set_cocktail_ingredient_relation
    @cocktail_ingredient_relation = CocktailIngredientRelation.find(params[:id])
  end

  def cocktail_ingredient_relation_params
    params.require(:cocktail_ingredient_relation).permit(:cocktail_id, :ingredient_id, :description)
  end
end
