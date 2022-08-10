class WatchController < ApplicationController
	def index
		@watches = Watch.all
	end

	def show
		@watch = Watch.find(params[:id])
	end

	def new
		@watch = Watch.new
	end 

	def create
		@watch = Watch.new(watch_params)

	end

	def item_params
    	params.require(:watch).permit(:name, :condition, :production_year, 
    		:price, :brand, :condition, :original_box, :original_papers, 
    		:location, :listing_code, :model, :reference_number, :case_material, 
    		:movement, :bracelet_material, :reference_link, :price_talk)
  	end

end
