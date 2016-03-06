class RecipesController < ApplicationController

	def index
		@search = params[:looking_for] || 'chocolate'
  		@recipes = Recipe.for(@search)
	end
end	
