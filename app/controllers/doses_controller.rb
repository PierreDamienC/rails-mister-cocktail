class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @params_info = dose_params
    if Dose.create(cocktail: @cocktail, description: @params_info[:description], ingredient_id: @params_info[:ingredient_id])
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
    
  end

  def edit
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)

    redirect_to cocktail_path(@dose.cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private 

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
