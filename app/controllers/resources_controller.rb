class ResourcesController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def index
		render :json => resources.to_json
	end
	
	def show
		id = params[:id].to_i
		render :json => resources.find { |resource| resource[:id] = id }
	end

	def create
		street = params[:street]
		city = params[:city]
		state = params[:state]
		zip = params[:zip]

		organization = params[:organization]
		description = params[:description]
		phone_number = params[:phone_number]
		website = params[:website]
		hours = params[:hours]

		@resource = Resource.create({:organization => organization, :description => description, :phone_number => phone_number, :website => website, :hours => hours})
		@address = Address.create({:street_address => street, :city => city, :state => state, :zip => zip, :resource_id => @resource.id})
		render :json => @resource.to_json
	end

	def delete
		Resource.find( params[:id] )

		head :no_content
	end
end
