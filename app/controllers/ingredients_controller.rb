class IngredientsController < ApplicationController

  def new
    @dose = Dose.find(params[:dose_id])
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_strong_params)
    @dose = Dose.find(params[:dose_id])
    @ingredient.dose = @dose
    if @ingredient.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def ingredient_strong_params
    params.require(:ingredient.permit(:name))
  end



end
