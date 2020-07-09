class CocktailsController < ApplicationController
  def index
    Cocktail.all
  end

  # def new
  #   @ingredients = Ingredient.find(params[:name])
  #   @cocktail = Cocktail.new
  # end
end
