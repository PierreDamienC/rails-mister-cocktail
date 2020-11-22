class CocktailsController < ApplicationController

  def index
    search_term = params[:search]
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create 
    @cocktail = Cocktail.new(cocktail_params)
    ingredient_ids = params[:cocktail][:ingredient_ids].select {|ingredient| ingredient != ""}
    if @cocktail.save
      ingredient_ids.each { |ingredient_id| Dose.create(ingredient_id: ingredient_id, cocktail: @cocktail, description: "A éditer") }
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
