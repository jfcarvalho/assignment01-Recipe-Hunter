class RecipesController < ApplicationController

	def index
		p params["search"]
		if !params["search"].empty?
			@search = params["search"] 	
		else @search = 'chocolate'
  		end
  		@recipes = Recipe.for(@search) #problema aqui, recipes não está retornando um arraylist e sim uma string
		
	end
end	
