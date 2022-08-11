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
		if @watch.save
			redirect_to watch_path(@watch)
		else
			render :new
		end
	end


	def edit
		@watch = Watch.find(params[:id])
	end

	def update
		@watch = Watch.find(params[:id])
		@watch.update(watch_params)

		redirect_to watch_path(@watch)
	end

	def destroy
		@watch = Watch.find(params[:id])
		if @watch.destroy
			redirect_to watch_index_path
		else 
			render :new
		end
	end

	def watch_params
    	params.require(:watch).permit(:name, :condition, :production_year, 
    		:price, :brand, :condition, :original_box, :original_papers, 
    		:location, :listing_code, :model, :reference_number, :case_material, 
    		:movement, :bracelet_material, :reference_link, :price_talk)
  	end

end
