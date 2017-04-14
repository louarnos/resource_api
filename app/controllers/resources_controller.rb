class ResourcesController < ApplicationController
	def index
		render :json => resources.to_json
	end
end
