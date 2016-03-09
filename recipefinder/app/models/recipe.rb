ENV['FOOD2FORK_KEY'] = "159692a8057862d62fa20530b8267768"
class Recipe < ActiveRecord::Base
	include HTTParty

	
	#key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: ENV['FOOD2FORK_KEY'] , field: "image_url,title,social_rank"
	format :json
	
	def self.for (keyword)
		
		get("/search", query: {q: keyword}) #problema está aqui!
		
	end
end
