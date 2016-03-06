class RecipesController < ApplicationController

	def index
		@search = params["search"] || 'chocolate'
		#p params["search"]
  		@recipes = Recipe.for(@search)
	end
end	
