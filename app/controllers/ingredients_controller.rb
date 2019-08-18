# class IngredientsController < ApplicationController

#   def new
#     @dose = Dose.find(params[:dose_id])
#     @ingredient = Ingredient.new
#   end

#   def create
#     @dose = Dose.find(params[:dose_id])
#     @cocktail = Cocktail.find(params[:cocktail_id])
#     @ingredient = Ingredient.new(ingredient_strong_params)
#     @ingredient.dose = @dose
#     @dose.cocktail = @cocktail
#     if @ingredient.save
#       respond_to do |format|
#         format.html { redirect_to cocktail_path(@cocktail) }
#         format.js
#       end
#     else
#       respond_to do |format|
#         format.html { redirect_to cocktails_path }
#         format.js
#       end
#     end
#   end

#   def ingredient_strong_params
#     params.require(:ingredient.permit(:name))
#   end



# end
