class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktails_id_path
    else
      render :new
    end
  end

  def destroy
    @dose.delete(@dose.id)
  end
  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
