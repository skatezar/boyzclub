class WatchController < ApplicationController
	before_action :authenticate_user!
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

	private

	def watch_params
    	params.require(:watch).permit(:name, :condition, :production_year, 
    		:price, :currency, :description, :brand, :condition, :original_box, :original_papers, 
    		:location, :listing_code, :model, :reference_number, :case_material, 
    		:movement, :bracelet_material, :price_talk, :photo1, :photo2, :photo3)
  	end

end
