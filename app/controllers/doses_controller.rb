class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
    # @ingredient = Ingredient.new
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_strong_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  def dose_strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
