class RecipesController < ApplicationController

	def index
		@search = params["search"] || 'chocolate'
		p params["search"]
  		@recipes = Recipe.for(@search) #problema aqui, recipes não está retornando um arraylist e sim uma string
		#p @recipes
	end
end	
