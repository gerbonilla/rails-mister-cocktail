class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @ingredient = Ingredient.where(name: params[:ingredient_name])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(description: params[:description], cocktail_id: @cocktail.id, ingredient_id: @ingredient.id)
    @dose.save
  end

  def delete
  end
end
