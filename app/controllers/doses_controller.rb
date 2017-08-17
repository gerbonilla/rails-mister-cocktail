class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new()
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.save
    redirect_to cocktail_path(Cocktail.find(params[:cocktail_id]))
  end

  def delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
