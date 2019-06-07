class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @dose.cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(user_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def user_params
    params.require(:cocktail).permit(:name)
  end
end
