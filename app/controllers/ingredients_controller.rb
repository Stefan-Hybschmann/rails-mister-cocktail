class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
    if @ingredient.name == ''
      render :new
    else
      @ingredient.save
      redirect_to cocktails_path(@cocktail)
    end
  end
end
