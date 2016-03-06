class Recipe < ActiveRecord::Base
	include HTTParty

	
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params fields: "thumb,title, socialRank", q: "key"
	format :json

	def self.for keyword
		#get("/search", query: {q: keyword})["recipes"] #problema está aqui!
		get("http://rubygems.org/api/v1/versions/httparty.json")
		#get("http://www.food2fork.com/api")
	end
end
